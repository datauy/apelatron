ActiveAdmin.register Step do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :platform_id, :standard_id, :reason, :order, :step_number, :title, :description, :template, :reason_id,  standard_ids: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:platform_id, :standard_id, :reason, :order, :step_number, :title, :description, :template, :reason_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  scope :all, default: true
  Platform.all.each do |pl|
    scope :"#{pl.name}" do |step|
      step.where(platform: pl)
    end
  end

  form do |f|
    f.inputs do
      f.input :platform
      f.input :reason
      f.input :standards, as: :check_boxes
      f.input :step_number
      f.input :order
      f.input :title
      f.input :description, as: :ckeditor
      f.input :template, as: :ckeditor
    end
    f.actions
  end
end
