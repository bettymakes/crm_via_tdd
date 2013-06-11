require "minitest/autorun"
require_relative "../contact"


class TestContact < MiniTest::Unit::TestCase

  def test_setup
    @contact = Contact.new(1000, "Frank", "Budkis", "email@email.com", "notes here")
  end

  def test_display_contact
    assert_equal "First name: #{@contact.firstname}\n
                  Last name: #{@contact.lastname}\n
                  Email: #{@contact.email}\n
                  Notes: #{@contact.notes}",
                  @contact.display_contact
  end


end
