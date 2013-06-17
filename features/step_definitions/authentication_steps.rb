Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create( email: email, password: password )
  refute user.new_record?
end

Then(/^I should be able to log back in as "(.*?)" with password "(.*?)"$/) do |email, password|
  visit new_user_session_path
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
  page.should have_content("You are now signed in.")
end

Given "I am logged in" do
  user = User.create( email: "bob@example.com", password: "password" )
  visit new_user_session_path
  fill_in "Email", with: "bob@example.com"
  fill_in "Password", with: "password"
  click_button "Sign in"
  page.should have_content("You are now signed in.")
end