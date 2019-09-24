class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.date :date
      t.text :time
      t.string :location
      t.string :comments
      t.integer :friend_id

      t.timestamps
    end
  end
end
