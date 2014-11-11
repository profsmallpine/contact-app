class Contact < ActiveRecord::Base
  has_many :phone_number_contacts
  has_many :phone_numbers, through: :phone_number_contacts

  has_many :company_contacts
  has_many :companies, through: :company_contacts

  has_many :address_contacts
  has_many :addresses, through: :address_contacts

  has_many :relationships, foreign_key: :contact1

  validates :first_name, :last_name, presence: true

  def self.search(search_input)
  	@contacts = Contact.all
  	@contacts.find_all { |contact| /#{search_input.downcase}/.match(contact.whole_name.downcase).class == MatchData }
  end

  def whole_name
  	"#{self.first_name} #{self.last_name}"
  end
end
