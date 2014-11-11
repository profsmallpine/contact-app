class Relationship < ActiveRecord::Base
  validates :contact1, :contact2, :relationship_type, presence: true

  def self.destroy_self_and_relationships(contact)
  	Relationship.where(contact2: contact.id).destroy_all
		Relationship.where(contact1: contact.id).destroy_all
		contact.destroy!
  end
end
