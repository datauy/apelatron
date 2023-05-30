class AddSuccessToComplaint < ActiveRecord::Migration[6.1]
  def change
    add_column :complaints, :success, :boolean
  end
end
