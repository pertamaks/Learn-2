Then(/^User can login$/) do
  valid = @browser.find_element(css:'#content > div > p').text
  p "You logged into basic auth" if @wait.until{valid.eql "Congratulations! You must have the proper credentials."}
end

Given(/^User enter the website with username and password$/) do
  @browser.get 'https://admin:admin@the-internet.herokuapp.com/basic_auth'
end