class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.references :platform, null: false, foreign_key: true
      t.references :standard, null: false, foreign_key: true
      t.integer :reason
      t.integer :order
      t.integer :step_number
      t.string :title
      t.text :description
      t.text :template

      t.timestamps
    end
  end
end
