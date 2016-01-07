class CreateInterestedPeople < ActiveRecord::Migration
  def change
    create_table :interested_people do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :location 
      t.timestamps null: false

    end
  end
end
