class CreatePhoneNumberContacts < ActiveRecord::Migration
  def change
    create_table :phone_number_contacts do |t|
    	t.integer  :phone_number_id
      t.integer  :contact_id

      t.timestamps
    end
  end
end
