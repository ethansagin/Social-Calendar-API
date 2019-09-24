class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.date :birthday
      t.integer :visit_interval

      t.timestamps
    end
  end
end
