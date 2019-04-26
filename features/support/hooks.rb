#Hooks for all scenario

Before do

  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.timeouts.implicit_wait = 10
  @wait = Selenium::WebDriver::Wait.new(:timeout => 10)

end

After do |scenario|

  if (scenario.failed?).eql(false)
    scn_scd(scenario)
  end

  if scenario.failed?
    scn_fld(scenario)
  end

  @browser.quit

end