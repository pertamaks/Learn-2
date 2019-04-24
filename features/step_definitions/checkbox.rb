When(/^User go to the checkbox page$/) do
  link = @browser.find_element(xpath:'//*[@id="content"]/ul/li[6]/a')
  # -= VALIDATION =- #
  # validate user in checkbox page
  valid = if (link.text) == "Checkboxes"
    p "#{link.text} Validated"
  else
    p "Page Not Validated"
  end
  link.click if valid == "#{link.text} Validated"
end

And(/^User check the 1st checkbox$/) do
  cbx1 = @browser.find_element(css:'#checkboxes > input[type="checkbox"]:nth-child(1)')
  cbx1.click if @wait.until{cbx1.displayed?}
  # -= VALIDATION =- #
  # validate user select the 1st checkbox
  if (cbx1.selected?)
    p "Checkbox 1 selected"
  else
    p "Checkbox 1 not selected"
  end
end

Then(/^User uncheck the 2nd checkbox$/) do
  cbx2 = @browser.find_element(css:'#checkboxes > input[type="checkbox"]:nth-child(3)')
  cbx2.click if @wait.until{cbx2.displayed?}
  # -= VALIDATION =- #
  # validate user select the 2nd checkbox
  if (cbx2.selected?)
    p "Checkbox 2 selected"
  else
    p "Checkbox 2 not selected"
  end
end