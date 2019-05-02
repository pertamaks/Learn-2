And(/^User go to the form auth page$/) do
  click_link('Form Authentication')
end

And(/^User enter the valid username and password$/) do
  within('#login') do
    fill_in('#username', with:'dadsda')
    fill_in('#password', with:'dads')
  end
  click_button(' Login')
end

Then(/^User Successfully login into the form auth$/) do
  pending
end