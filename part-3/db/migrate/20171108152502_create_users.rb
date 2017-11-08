class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :username, null: false, unique: true
      t.string :hashed_password, null: false, unique: true

      t.timestamps
    end
  end
end
