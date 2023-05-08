class AddReasonToStep < ActiveRecord::Migration[6.1]
  def change
    add_reference :steps, :reason, null: false, foreign_key: true
  end
end
