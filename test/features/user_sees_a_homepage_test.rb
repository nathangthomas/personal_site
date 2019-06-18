require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_gets_an_error_message
    visit 'blahblahblah.com'

    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")

  # I don't know where to put this. I tried putting it in it's own file however that also did not work properly.
  end
end
