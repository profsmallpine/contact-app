class CreateCompaniesContacts < ActiveRecord::Migration
  def change
    create_table :companies_contacts do |t|
    	t.integer  :company_id
      t.integer  :contact_id

      t.timestamps
    end
  end
end
