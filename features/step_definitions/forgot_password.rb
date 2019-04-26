Given(/^User enter the website$/) do
  # go to homepage
  @browser.get 'https://the-internet.herokuapp.com/'

  # -= VALIDATION =- #
  #open home page
  def home_title
    if (@browser.title) == 'The Internet'
      p "User enter the website: Page #{@browser.title} is Validated"
    else
      p "User enter the website: Page #{@browser.title} is not Validated"
    end
  end
end

And(/^User go to forgot password menu$/) do
  # locator forgot password button
  btn = @browser.find_element(css: '#content > ul > li:nth-child(19) >a')
  # click the forgot password button
  if home_title == "User enter the website: Page #{@browser.title} is Validated"
    btn.click if @wait.until {btn.displayed?}
  end

  # -= VALIDATION =- #
  # validate forgot password page
  def forgot_title
    jdl = @browser.find_element(css: '#content > div > h2')
    @wait.until {jdl.displayed?}
    if (jdl.text) == 'Forgot Password'
      p "Page #{jdl.text} is Validated"
    else
      p "Page #{jdl.text} is not Validated"
    end
  end
end

And(/^User enter the email address$/) do
  # locator email text field
  def fld
    @browser.find_element(css: '#email')
  end

  # email address
  def fmel
    'jembatan@email.com'
  end

  # send email address to email text field
  if forgot_title == "User enter the website: Page #{@browser.find_element(css: '#content > div > h2').text} is Validated"
    fld.send_keys fmel
  end

  # -= VALIDATION =- #
  # validate email sent to text field
  def forgot_email
    if fld.text() == ''
      p "email inputted"
    else
      p "email not inputted"
    end
  end

  # locator submit email button
  btn = @browser.find_element(css: '#form_submit')
  # click submit email button
  if forgot_email == "email inputted"
    btn.click if @wait.until {btn.displayed?}
  end
end

Then(/^Password reset successfully sent$/) do
  # -= VALIDATION =- #
  # validate email successfully sent
  fscs = @browser.find_element(css: '#content')
  fscs.text
  if (fscs.text) == "Your e-mail's been sent!"
    p "Forgot password email sent"
  else
    p "Forgot password email not sent"
  end

end