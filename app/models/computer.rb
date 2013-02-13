class Computer < Item
  %w[cpu gpu ram].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end
  validates :cpu, presence: true
  validates :gpu, presence: true
  validates :ram, presence: true, numericality: true
end
