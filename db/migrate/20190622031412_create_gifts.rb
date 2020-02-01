class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :name
      t.integer :wishlevel
      t.float :price
      t.text :description
      t.string :url_image
      t.string :url_prod
      t.boolean :active

      t.timestamps
    end
  end
end
