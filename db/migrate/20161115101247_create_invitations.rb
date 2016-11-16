class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :events_id
      t.integer :invitee_id
      t.integer :inviter_id

      t.timestamps null: false
    end
  end
end
