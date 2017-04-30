class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :article
      t.references :user

      t.timestamps
    end
  end
end
