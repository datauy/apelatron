class AddTokenToComplaint < ActiveRecord::Migration[6.1]
  def change
    add_column :complaints, :token, :string
  end
end
