class AddWeightToCountry < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :weight, :integer
  end
end
