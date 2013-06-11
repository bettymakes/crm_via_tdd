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
    puts "ID: #{@id}"
    puts "First name: #{@firstname}"
    puts "Last name: #{@lastname}"
    puts "Email: #{@email}"
    puts "Notes: #{@notes}"
  end


end
