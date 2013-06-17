When(/^I go to the homepage$/) do
  visit "/"
end

When "I show me the page" do
  save_and_open_page
end

When(/^I go to the user index page$/) do
  visit "/trips"
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_named, value|
  fill_in field_named, with: value
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_name|
  fill_in field_name, with: value
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not have_content(content)
end