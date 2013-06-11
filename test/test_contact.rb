require "minitest/autorun"
require_relative "../contact"


class TestContact < MiniTest::Unit::TestCase
  def setup
    @contact = Contact.new(1000, "Frank", "Budkis", "email@email.com", "notes here")
  end

  def test_assert_accessors
    assert_equal 1000, @contact.id
    assert_equal "l33tb0y", @contact.firstname
    assert_equal "Budkis", @contact.lastname
    assert_equal "email@email.com", @contact.email
    assert_equal "notes here", @contact.notes
  end

  def test_display_contact
    # assert_equal "ID: #{@contact.id}\nFirstname: #{@contact.firstname}\nLastname: #{@contact.lastname}\nEmail: #{@contact.email}\nNotes: #{@contact.notes}", @contact.display_contact
    result = @contact.display_contact
    assert result.include? @contact.id.to_s
    assert result.include? @contact.firstname
    assert result.include? @contact.lastname
    assert result.include? @contact.email
    assert result.include? @contact.notes
  end


end
