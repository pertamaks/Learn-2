module Selenium::WebDriver::SearchContext
  def find_element_css(css)
    find_element(css: css)
  end
end

# Shorting find element CSS
def find_css(css)
  @browser.find_element_css(css)
end

# Take Passed Screenshot
def scn_scd(locator)
  @browser.save_screenshot("E:\\GIT AUTO\\Learn 2\\features\\screenshoot\\Passed #{locator.name + ".png"}")
  embed("E:\\GIT AUTO\\Learn 2\\features\\screenshoot\\Passed #{locator.name + ".png"}","image/.png")
end

# Take Failed Screenshot
def scn_fld(locator)
  @browser.save_screenshot("E:\\GIT AUTO\\Learn 2\\features\\screenshoot\\Failed #{locator.name + ".png"}")
  embed("E:\\GIT AUTO\\Learn 2\\features\\screenshoot\\Failed #{locator.name + ".png"}", "image/.png")
end
