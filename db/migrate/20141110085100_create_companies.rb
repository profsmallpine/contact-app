class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string   :name
      t.string   :position
      t.integer  :sister_company_id

      t.timestamps
    end
  end
end
