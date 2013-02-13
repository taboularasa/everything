class Tool < Item
  %w[type size].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  validates :type, presence: true
end
