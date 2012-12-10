Given /^I am on the 'Courses' page$/ do
  course course_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |tag, value|
page.should have_css(tagm :text => value)
end

When /^I enter "(.*?)" for "(.*?)"$/ do |arg1, arg2|

end

When /^I select "(.*?)" for "(.*?)"$/ do |arg1, arg2|

end

When /^I click button "(.*?)"$/ do |add|

end

Then /^I should see "(.*?)"$/ do |name|

end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  within_table('Course list') do
    within('th', :text => cell_value)do
    find('c', :text => link).click
end

Then /^I should not see "(.*?)"$/ do |arg1|

end