class AddReasonToComplaint < ActiveRecord::Migration[6.1]
  def change
    add_column :complaints, :reason, :int
  end
end
