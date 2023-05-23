class AddResponseToComplaint < ActiveRecord::Migration[6.1]
  def change
    add_column :complaints, :delay, :integer
    add_column :complaints, :usability, :integer
    add_column :complaints, :satisfaction, :integer
    add_column :complaints, :useful, :integer
  end
end
