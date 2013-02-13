class PowerSupply < Item
  %w[input output amp_rating input_connector output_connector].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  validates :input, presence: true
  validates :output, presence: true
  validates :amp_rating, presence: true
  validates :input_connector, presence: true
  validates :output_connector, presence: true
end
