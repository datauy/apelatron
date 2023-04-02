class CreateComplaints < ActiveRecord::Migration[6.1]
  def change
    create_table :complaints do |t|
      t.string :name
      t.string :email
      t.string :follow_number
      t.references :platform, null: false, foreign_key: true
      t.references :copyright, foreign_key: true
      t.references :standard, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.text :description
      t.string :video
      t.references :limitations, null: false, foreign_key: true

      t.timestamps
    end
  end
end
