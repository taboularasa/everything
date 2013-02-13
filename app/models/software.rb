class Software < Item
  %w[version publisher].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end
  validates :version, presence: true
  validates :publisher, presence: true
end
