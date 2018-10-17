class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.decimal :price, null: false, precision: 10, scale: 2
      t.integer :author_id, null: false

      t.timestamps
    end
  end
end
