#Hooks for all scenario

Before do

  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.timeouts.implicit_wait = 3
  @wait = Selenium::WebDriver::Wait.new(:timeout => 10)

end

After do |scenario|

  if (scenario.failed?).eql false
    @browser.save_screenshot("Passed #{scenario.name+".png"}")
    embed("Passed #{scenario.name+".png"}","image/.png")
  end

  @browser.quit

end