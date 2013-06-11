require_relative "contact"

class Database

  attr_accessor :contacts

  def initialize
    @contacts = []
  end

  def add(id, firstname, lastname, email, notes)
    @contacts << Contact.new(id, firstname, lastname, email, notes)
  end

  def display_all
    @contacts.each do |contact|
      contact.display_contact
      puts ""
    end
  end

  def find_contact(param)
    result = nil
    @contacts.each do |contact|
        result = contact if contact.id == param
        result = contact if contact.firstname == param
        result = contact if contact.lastname == param
        result = contact if contact.email == param
        result = contact if contact.notes == param
    end
    result
  end

  def display_by_attribute(attribute)
    attribute_array = []
    @contacts.each do |contact|
      attribute_array << contact.id if "id" == attribute
      attribute_array << contact.firstname if "firstname" == attribute
      attribute_array << contact.lastname if "lastname" == attribute
      attribute_array << contact.email if "email" == attribute
      attribute_array << contact.notes if "notes" == attribute
    end
    attribute_array
  end

  def display_single_contact(attribute)
  end

  def modify
  end

  def delete
  end

end



# CRUD
  # Create -> DONE
  # Read
  # Update
  # Delete

# db = Database.new
# db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
# db.add(1001, "Fran", "Budis", "hotmail.com", "fgt")

# p db.display_all
