class CreateAddressContacts < ActiveRecord::Migration
  def change
    create_table :address_contacts do |t|
    	t.integer  :address_id
      t.integer  :contact_id

      t.timestamps
    end
  end
end
