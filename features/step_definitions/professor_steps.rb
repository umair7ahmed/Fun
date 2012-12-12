Given /^I am on the 'professors' page$/ do
  visit professors_path
end

Given /^I am on the 'new professor' page$/ do
  visit new_professor_path
end

When /^I follow "(.*?)" link for the "(.*?)"$/ do |link, cell_value|
 within_table('Professor List') do
    within('td', :text => cell_value) do
      find('a', :text => link).click
   end
 end
end

When /^I change Email "(.*?)" to "(.*?)"$/ do |old, new|
  fill_in "Email", :with => new
end



