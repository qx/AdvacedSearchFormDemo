class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :category, index: true, foreign_key: true
      t.decimal :price
      t.date :released_at

      t.timestamps null: false
    end
  end
end
