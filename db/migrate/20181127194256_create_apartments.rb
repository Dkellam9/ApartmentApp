class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :postalcode
      t.string :state
      t.string :country
      t.string :managername
      t.string :managerphone
      t.string :managerhours

      t.timestamps
    end
  end
end
