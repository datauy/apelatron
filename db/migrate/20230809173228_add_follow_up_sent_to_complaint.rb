class AddFollowUpSentToComplaint < ActiveRecord::Migration[6.1]
  def change
    add_column :complaints, :follow_up_sent, :boolean, default: false
  end
end
