class CreateDictionaries < ActiveRecord::Migration[6.0]
  def change
    create_table :dictionaries do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.integer :category_id, null: false
      t.references :user
      t.timestamps
    end
  end
end
