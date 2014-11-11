class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
    	t.integer  :contact1
      t.integer  :contact2
      t.string   :relationship_type

      t.timestamps
    end
  end
end
