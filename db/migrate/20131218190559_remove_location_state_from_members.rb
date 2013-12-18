class RemoveLocationStateFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :location_state, :reference
  end
end
