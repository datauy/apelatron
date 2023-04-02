class CreatePlataforms < ActiveRecord::Migration[6.1]
  def change
    create_table :plataforms do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
