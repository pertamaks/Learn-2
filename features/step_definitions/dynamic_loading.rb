And(/^User go to the dynamic loading selector$/) do
  # -= VALIDATION =- #
  # Validate user going to the dynamic loading selector page

    lnk = @browser.find_element_css('#content > ul > li:nth-child(13) > a')
    if home_title == "User enter the website: Page #{@browser.title} is Validated"
      lnk.click if @wait.until{lnk.displayed?}
      p "User go to the dynamic loading selector: User going to the page"
    end
end

When(/^User on the loading selector, user select the hidden element page$/) do
  # -= VALIDATION =- #
  # Validate user select the hidden element page
    lnk = @browser.find_element_css('#content > div > a:nth-child(5)')
    if @wait.until{lnk.displayed?}
      lnk.click
      p "User select the hidden element page: User going to hidden element page"
    end
end

When(/^User on the hidden loading page, user start the loading$/) do
  # -= VALIDATION =- #
  # validate user start the loading
  btn = @browser.find_element_css('#start > button')
  if @wait.until{btn.displayed?}
    btn.click
    p "User start the loading: loading started"
  end

end

Then(/^User must see the content after the loading finished$/) do
  # -= VALIDATION =- #
  # Validate user get the hidden content
  cnt = @browser.find_element_css('#finish > h4')
  @wait.until{cnt.displayed?}.eql(false)
    p "User must see the content after the loading finished: #{cnt.text} is displayed"
end

