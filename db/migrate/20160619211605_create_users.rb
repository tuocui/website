class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :type
      t.string :username
      t.string :password_hash
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
