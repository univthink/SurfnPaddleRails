class CreatePosts < ActiveRecord::Base
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.integer :id
      t.boolean :published

      t.timestamps null: false
    end
  end
end