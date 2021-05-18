class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :address
      t.integer :price_per_hour
      t.integer :avg_rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
