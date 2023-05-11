class CreateFriendApps < ActiveRecord::Migration[7.0]
  def change
    create_table :friend_apps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :linkedin

      t.timestamps
    end
  end
end
