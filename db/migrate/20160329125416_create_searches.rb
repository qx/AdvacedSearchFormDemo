class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.references :category, index: true, foreign_key: true
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps null: false
    end
  end
end
