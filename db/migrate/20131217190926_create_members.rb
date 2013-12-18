class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.string :location_place
      t.integer :household_size
      t.string :uid
      t.string :pran
      t.string :image
      t.decimal :monthly_income
      t.decimal :pension_saving
      t.references :occupation, index: true
      t.references :partner, index: true
      t.references :location_state, index: true

      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
