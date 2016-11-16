class RemoveColumnEventsIdFromInvitation < ActiveRecord::Migration
  def change
    remove_column :invitations, :events_id, :integer
  end
end
