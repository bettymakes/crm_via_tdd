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

  def find_contact(user_id)
    result = nil
    @contacts.each do |contact|
        result = contact if contact.id == user_id
    end
    result
  end

  def display_by_attribute(attribute)
    attribute_array = []
    @contacts.each do |contact|
      attribute_array << contact.id if "id"               == attribute
      attribute_array << contact.firstname if "firstname" == attribute
      attribute_array << contact.lastname if "lastname"   == attribute
      attribute_array << contact.email if "email"         == attribute
      attribute_array << contact.notes if "notes"         == attribute
    end
    attribute_array
  end

  def display_single_contact(user_id)
    contact = find_contact(user_id)
    contact.display_contact
  end

  def modify(user_id, attribute, value)
    contact = find_contact(user_id)
    contact.send(attribute + "=", value)
    # contact.update_contact(attribute, value)
  end

  def remove(user_id)
    contact = find_contact(user_id)
    @contacts.delete(contact)
  end



end



# CRUD
  # Create -> DONE
  # Read   -> DONE
  # Update -> DONE
  # Delete..? -> DONE

# db = Database.new
# db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
# p db.display_all
# db.modify(1000, "firstname", "FRANCIS")
# p db.display_all

