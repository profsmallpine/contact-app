class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
    	t.integer  :contact1
      t.integer  :contact2
      t.string   :type

      t.timestamps
    end
  end
end
