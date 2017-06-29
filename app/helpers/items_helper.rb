module ItemsHelper
  def unique_list
    Attribute.select(:kind).distinct
  end
end
