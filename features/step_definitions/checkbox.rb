And(/^User go to the checkbox page$/) do
  link = @browser.find_element(xpath:'//*[@id="content"]/ul/li[6]/a')
  #validation
  p "#{link.text}" if expect(link.text).equal "Chekboxes"
  link.click if @wait.until{link.displayed?}
end

And(/^User check the 1st checkbox$/) do
  cbx1 = @browser.find_element(css:'#checkboxes > input[type="checkbox"]:nth-child(1)')
  cbx1.click if @wait.until{cbx1.displayed?}
  #validation
  p "Checkbox 1 checked" if (cbx1.have_attributes("checked")).eql true
end

Then(/^User uncheck the 2nd checkbox$/) do
  cbx2 = @browser.find_element(css:'#checkboxes > input[type="checkbox"]:nth-child(3)')
  cbx2.click if @wait.until{cbx2.displayed?}
  #validation
  expect(cbx2.selected?).eql false
  p "Checkbox 2 unchecked"
end