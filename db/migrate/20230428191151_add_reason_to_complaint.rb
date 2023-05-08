class AddReasonToComplaint < ActiveRecord::Migration[6.1]
  def change
    add_reference :complaints, :reason, null: false, foreign_key: true
  end
end
