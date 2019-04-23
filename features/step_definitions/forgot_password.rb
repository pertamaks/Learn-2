Given(/^User enter the website$/) do
  @browser.get 'https://the-internet.herokuapp.com/'
  p "#{@browser.title} is opened"
end

And(/^User go to forgot password menu$/) do
  btn = @browser.find_element(xpath:'//*[@id="content"]/ul/li[19]/a')
      btn.click if @wait.until{btn.displayed?}
end

And(/^User enter the email address$/) do
  fld = @browser.find_element(xpath:'//*[@id="email"]')
  fld.send_keys 'jembatan@email.com'
  btn = @browser.find_element(xpath:'//*[@id="form_submit"]/i')
  btn.click if @wait.until{btn.displayed?}
end

Then(/^Password reset successfully sent$/) do
  text = @browser.find_element(xpath:'//*[@id="content"]')
  p "Password is sent" if @wait.until{text.displayed?}
end