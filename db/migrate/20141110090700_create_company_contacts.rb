class CreateCompanyContacts < ActiveRecord::Migration
  def change
    create_table :company_contacts do |t|
    	t.integer  :company_id
      t.integer  :contact_id

      t.timestamps
    end
  end
end
