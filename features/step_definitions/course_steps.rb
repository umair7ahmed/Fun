 Given /^I am on the 'courses' page$/ do
  visit courses_path
end

Given /^I am on the 'new course' page$/ do
  visit new_course_path
end

When /^I change Professor "(.*?)" to "(.*?)"$/ do |old, new|
  fill_in "Professor", :with => new
end

When /^I follow "(.*?)" link for "(.*?)"$/ do |link, cell_value|
  within_table('Course List') do
    within('td', :text => cell_value) do
      find('a', :text => link).click
   end
 end
end

