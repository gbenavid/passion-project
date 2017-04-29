class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :body, presence: true
      t.references :user

      t.timestamps
    end
  end
end
