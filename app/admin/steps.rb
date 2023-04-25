ActiveAdmin.register Step do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :platform_id, :standard_id, :reason, :order, :step_number, :title, :description, :template
  #
  # or
  #
  # permit_params do
  #   permitted = [:platform_id, :standard_id, :reason, :order, :step_number, :title, :description, :template]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
