class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.string :address
      t.string :zipcode
      t.integer :bedrooms
      t.integer :bathrooms
      t.float :price
      t.boolean :negotiable
      t.date :date_available
      t.float :size
      t.boolean :furnished

      t.timestamps
    end
  end
end
