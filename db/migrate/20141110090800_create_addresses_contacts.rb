class CreateAddressesContacts < ActiveRecord::Migration
  def change
    create_table :addresses_contacts do |t|
    	t.integer  :address_id
      t.integer  :contact_id

      t.timestamps
    end
  end
end
