class CreateStepRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :step_relations do |t|
      t.references :step, null: false, foreign_key: true
      t.references :standard, foreign_key: true

      t.timestamps
    end
    remove_column :steps, :standard_id
    remove_column :steps, :reason
  end
end
