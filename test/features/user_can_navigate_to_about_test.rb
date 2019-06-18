require './test/test_helper'

class LinkTest < CapybaraTestCase
  # def test_user_gets_an_error_message
  #   visit '/'
  #   click_on "About"
  #
  #   assert_equal 404, page.status_code
  #   assert_equal '/about', current_path
  #   assert page.has_content?("Page not found.")
  # end
  # I don't know where to put this. I tried putting it in it's own file however that also did not work properly. 
  def test_user_can_see_the_homepage
    visit '/'
    click_on "About"

    assert_equal 200, page.status_code
    assert_equal '/about', current_path
    assert page.has_content?("About Me!")
  end
end
