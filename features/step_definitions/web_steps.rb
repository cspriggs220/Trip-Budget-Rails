def path_to page
  case page
  when /the home\s?page/
    root_path
  when "the trips page"
    trips_path
  end
end

When(/^I go to (.*)$/) do |page|
  visit path_to(page)
end

When "show me the page" do
  save_and_open_page
end

When(/^I go to the user index page$/) do
  visit "/trips"
end

When(/^I (?:click|press) "(.*?)"$/) do |text|
  click_link_or_button text
end

When(/^click "(.*?)" for trip "(.*?)"$/) do |text, trip_name|
  trip_id = Trip.where( name: trip_name ).first.id
  find_link("#{text.downcase}_trip_#{trip_id}").click
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field_named, value|
  fill_in field_named, with: value
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_name|
  fill_in field_name, with: value
end

When /^I expect to click "([^"]*)" on a confirmation box saying "([^"]*)"$/ do |option, message|
  retval = (option == 'OK') ? 'true' : 'false'
  page.evaluate_script("window.confirm = function (msg) {
    document.cookie = msg
    return #{retval}
  }")
  @expected_message = message.gsub("\\n", "\n")
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not have_content(content)
end

Then(/^I should see the following list:$/) do |table|
  table.raw.each_with_index do |content, row|
    page.should have_xpath("//tbody/tr[#{row+1}]/td[contains(normalize-space(.), '#{content[0]}')]")
  end
end

Then(/^I should not see any of the following:$/) do |table|
  table.raw.each do |item|
    page.should have_no_content(item[0])
  end
end