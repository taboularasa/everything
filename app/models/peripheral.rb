class Peripheral < Item
  %w[computer_id model manufacturer].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end
  validates :computer_id, numericality: true
  validates :model, presence: true
  validates :manufacturer, presence: true
end
