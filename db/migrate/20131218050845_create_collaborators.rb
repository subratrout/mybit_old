class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.string :partner

      t.timestamps
    end
  end
end
