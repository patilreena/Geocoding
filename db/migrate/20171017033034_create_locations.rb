class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.string :postcode
      t.string :country
      t.references :user, foreign_key: true
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
