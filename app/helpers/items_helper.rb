module ItemsHelper
  def type_plural(item)
    item.type.downcase.pluralize
  end

  def type_sym(item)
    type_plural(item).to_sym
  end

  def value_or_na(val)
    val == nil ? "N/A" : val
  end
end
