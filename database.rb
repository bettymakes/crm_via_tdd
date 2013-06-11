require_relative "contact"

class Database

  attr_accessor :contacts

  def initialize
    @contacts = []
  end

  def add(id,firstname,lastname,email,notes)
    @contacts << Contact.new(id, firstname, lastname, email, notes)
  end

end


