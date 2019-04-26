Then(/^User can login$/) do
  # -= VALIDATION =- #
  # user login success
  if basic_auth.eql "Page opened"
    p "You logged into basic auth"
  else
    p "You not logged in"
  end
end

Given(/^User enter the website with username and password$/) do
  @browser.get 'https://admin:admin@the-internet.herokuapp.com/basic_auth'

  def basic_auth
    jdl = @browser.find_element(css: '#content > div > p').text
    if jdl == "Congratulations! You must have the proper credentials."
      p "Page opened"
    else
      p "Page not opened"
    end
  end
end