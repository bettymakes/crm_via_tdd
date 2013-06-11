class Contact

  attr_accessor :id, :firstname, :lastname, :email, :notes

  def initialize(id, firstname, lastname, email, notes)
    @id = id
    @firstname = firstname
    @lastname = lastname
    @email = email
    @notes = notes
  end

  def display_contact
    "ID:         #{@id}\nFirst name: #{@firstname}\nLast name:  #{@lastname}\nEmail:      #{@email}\nNotes:      #{@notes}"
  end

  # def update_contact(attribute, value)
  #   test = method(attribute)
  # end

end



