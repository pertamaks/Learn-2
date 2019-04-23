#Hooks for all scenario

Before do

  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.timeouts.implicit_wait = 3
  @wait = Selenium::WebDriver::Wait.new(:timeout => 10)

end

After do

  @browser.quit

end