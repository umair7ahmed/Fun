Given /^I am on the 'students' page$/ do
  visit students_path
end

Then /^in the "(.*?)", I should see "(.*?)"$/ do |tag, value|
  page.should have_css(tag, :text => value)
end

Then /^in the "(.*?)", I should see a link to "(.*?)"$/ do |csstag, value|
  within csstag do
    page.should have_link value
  end
end

Given /^I am on the 'new student' page$/ do
  visit new_student_path
end

When /^I enter "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in field, :with => value
end

When /^I select "([^"]*)" for "([^"]*)"$/ do |value, field|
  select value, :from => field
end

And /^I click button "(.*?)"$/ do |arg1|
 click_button arg1
end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  within_table('Student List') do
    within('td', :text => cell_value) do
      find('a', :text => link).click
   end
 end
end

When /^I change the Email "(.*?)" to "(.*?)"$/ do |oldemail, newemail|
  fill_in "Email", :with => newemail
end

Then /^I should not see "(.*?)"$/ do |value|
  page.should_not have_content(value)
end

