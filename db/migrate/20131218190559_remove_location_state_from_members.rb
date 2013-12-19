class RemoveLocationStateFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :location_state_id
  end
end
