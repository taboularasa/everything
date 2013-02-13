class Consumable < Item
  %w[height width depth diameter volume weight thread quantity remaining date_acquired].each do |key|
    attr_accessible key
    hstore_accessor :properties, key
  end
end
