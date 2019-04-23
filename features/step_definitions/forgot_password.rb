Given(/^User enter the website$/) do
  @browser.get 'https://the-internet.herokuapp.com/'
  p "#{@browser.title} is opened"

end

And(/^User go to forgot password menu$/) do
  pending
end

And(/^User enter the email address$/) do
  pending
end

Then(/^Password reset successfully sent$/) do
  pending
end