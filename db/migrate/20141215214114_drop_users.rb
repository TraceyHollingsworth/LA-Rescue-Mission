class DropUsers < ActiveRecord::Migration
  def change
    drop_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false, unique: true
    end
  end
end
