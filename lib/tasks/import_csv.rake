require 'csv'


namespace :uclagl do
  desc "Imports a CSV file into an ActiveRecord table"
  task :csv_model_import, [:filename, :model] => :environment do |task,args|
    CSV.foreach("#{Rails.root}/books.csv", :headers => true) do |row|
      puts row.to_hash
      args[:model].classify.constantize.create!(row.to_hash)
    end
  end
end
