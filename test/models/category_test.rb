require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  def category
    @category ||= Category.new name: 'Home'
  end

  def test_valid
    assert category.valid?
  end

  def test_invalid_without_name
    category.name = nil
    refute category.valid?
  end

  def test_invalid_length
    category.name = "A"
    refute category.valid?
  end
end
