class CreateBookImages < ActiveRecord::Migration[6.1]
  def change
    create_table :book_images do |t|
      
      t.string :title
      t.text :body
      t.integer :user

      t.timestamps
    end
  end
end
