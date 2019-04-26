Then(/^User enter the add element page$/) do
  btn = @browser.find_element_css('#content > ul > li:nth-child(2) > a')

  # -= VALIDATION =- #
  # validate button click
  if home_title == "Page #{@browser.title} is Validated"
    btn.click
    p "User enter the add element page: User going to add element page"
  else
    p "User enter the add element page: Your not in Home"
  end
end

When(/^User select the add element button$/) do
  add = @browser.find_element_css('#content .example button')
  add.text
  # -= VALIDATION =- #
  # validate user add element
  if add.text == 'Add Element'
    add.click
    p "User select the add element button: Adding element succeed"
  else
    p "User select the add element button: Element can't be added"
  end
end

Then(/^Element button will appear$/) do
  def elem_btn
    @browser.find_element_css('#content #elements button')
  end

  # -= VALIDATION =- #
  # validate element appear
  def elem_add
    if @wait.until {elem_btn.displayed?}
      p "Element button will appear: Element added"
    else
      p "Element button will appear: Element not added"
    end
  end
end

When(/^User delete element button$/) do
  if elem_add == "Element added"
    elem_btn.click if @wait.until {elem_btn.displayed?}
    p "User delete element button: Element can be deleted"
  else
    p "User delete element button: Element not found"
  end
end

Then(/^Element button will disappear$/) do
  # -= VALIDATION =- #
  # validate element deleted
  begin
    elem_btn.displayed?
  rescue
    Selenium::WebDriver::Error::NoSuchElementError
    p "Element button will disappear: Element has been deleted"
    false
  end
end