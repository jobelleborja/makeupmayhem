ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
permit_params :price, :brand, :product_type_id, :name, :description, :image_link
  #
  # or
  #
  # permit_params do
  #   permitted = [:price, :brand, :product_type_id, :name, :description, :image_link]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
