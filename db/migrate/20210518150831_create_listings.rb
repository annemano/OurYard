class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :address
      t.float :price_per_hour
      t.float :avg_rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
