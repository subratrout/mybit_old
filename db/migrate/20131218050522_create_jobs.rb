class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :occupation

      t.timestamps
    end
  end
end
