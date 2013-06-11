require "minitest/autorun"
require_relative "../contact"


class TestContact < MiniTest::Unit::TestCase
  def setup
    @contact = Contact.new(1000, "Frank", "Budkis", "email@email.com", "notes here")
  end

  def test_assert_accessors
    assert_equal 1000, @contact.id
    assert_equal "Frank", @contact.firstname
    assert_equal "Budkis", @contact.lastname
    assert_equal "email@email.com", @contact.email
    assert_equal "notes here", @contact.notes
  end


end
