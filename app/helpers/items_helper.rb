module ItemsHelper
  def item_controller(item)
    item.type.downcase.pluralize
  end
end
