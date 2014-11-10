class CreatePhoneNumbersContacts < ActiveRecord::Migration
  def change
    create_table :phone_numbers_contacts do |t|
    	t.integer  :phone_number_id
      t.integer  :contact_id

      t.timestamps
    end
  end
end
