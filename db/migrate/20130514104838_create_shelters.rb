class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.text :first_name
      t.text :last_name
      t.text :address_1
      t.text :address_2
      t.text :address_3
      t.text :city
      t.text :state
      t.text :zipcode
      t.text :zip_plus
      t.text :telephone
      t.text :family_size
      t.text :shelter_location

      t.timestamps
    end
  end
end
