class Cable < Item
  %w[connector_type length color last_working checked_out_id due_date].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end

  validates :connector_type, presence: true
  validates :length, presence: true, :numericality => true
  validates :color, presence: true
end
