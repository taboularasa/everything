module ItemsHelper
  def type_plural(item)
    item.type.downcase.pluralize
  end

  def type_sym(item)
    type_plural(item).to_sym
  end
end
