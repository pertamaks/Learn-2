Then(/^User go to dropdown menu$/) do
  lnk = @browser.find_element_css('#content > ul > li:nth-child(10) > a')
  # -= VALIDATION =- #
  # validate user can go to the dropdown menu
  if home_title == "User enter the website: Page #{@browser.title} is Validated"
    lnk.click
    p "User go to dropdown menu: User going to dropdown menu"
  else
    p "User go to dropdown menu: User not in homepage"
  end
end

When(/^User on the dropdown menu$/) do
  # -= VALIDATION =- #
  # validate user on the dropdown menu
  def drp_menu
    drp = @browser.find_element_css('#content > div > h3')
    if drp.text == 'Dropdown List'
      p "User on the dropdown menu: User on the dropdown menu"
    else
      p "User on the dropdown menu: User not on the dropdown menu"
    end
  end
end

And(/^User select the first dropdown$/) do
  def drp1
    @browser.find_element_css('#dropdown > option:nth-child(2)')
  end
  # -= VALIDATION =- #
  # validate user select dropdown 1
  if drp_menu == 'User on the dropdown menu: User on the dropdown menu'
    drp1.click
    p "User select the first dropdown: First dropdown selected"
  else
    false
  end
end

Then(/^First dropdown is selected$/) do
  # -= VALIDATION =- #
  # validate dropdown 1 selected
  if drp1.selected?
    p "First dropdown is selected: First dropdown is selected"
  else
    false
  end
end

