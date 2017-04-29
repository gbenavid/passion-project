class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name, presence: true
      t.string :username, presence: true, uniqness: true
      t.string :email, presence: true, uniqness: true
      t.string :password_hash, presence: true
      t.references :friends, index: true

      t.timestamps
    end
  end
end
