require 'rubygems'
require 'google_drive'

# set your username and passwords
login = GoogleDrive.login(ENV["GOOGLE_DRIVE_USERNAME"], ENV["GOOGLE_DRIVE_PASSWORD"])
# set your spreadsheet key
sheet = login.spreadsheet_by_key(ENV["GOOGLE_DRIVE_SPREADSHEET"])

# create all containers here
container_sheet = sheet.worksheet_by_title('container')


# create all items here
sheet.worksheets.each { |ws| build_items_from_worksheet(ws) }

def build_items_from_ws(ws)
  next if ws.title == 'container'

  model = worksheet_to_model(ws)
  next if model == nil

  data = extract_fields(ws)
  next if data == nil

  #try to create a record for each item in the data array
  data.each do |d|
    begin
      temp_item = model.create!(d, { without_protection: true })

      # create a container from data[container_id] if it exists
      if temp_container = Container.where(id: d['possessor_id'])
        temp_item.possessor = temp_container
        temp_item.save!
      end
      # associate container as temp_item's possessor and remove from data[]

    rescue Exception => e
      puts "================================================="
      p d
      p e.message
    end
  end
end

def worksheet_to_model(ws)
  begin
    eval(ws.title.classify)
  rescue
    puts "================================================="
    puts "missmatch on model / worksheet name: #{ws.title}"
    nil
  end
end

def extract_fields(ws)
  columns = worksheet_to_model(ws).column_names
  rows = ws.rows.dup
  fields = rows.shift.map{ |k| k[/\w+/] }

  data = []
  rows.each do |val|
    ary = [fields.dup, val.dup].transpose
    ary.select!{ |a| columns.include?(a[0]) }
    data.push(Hash[*ary.flatten]) if ary
  end

  data unless data.empty?
end
