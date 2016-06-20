class ChangingType < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.rename :type, :user_type
    end

    add_index :users, :username
  end
end
