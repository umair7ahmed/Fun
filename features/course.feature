Feature: Course
  In order to register for courses
  As a student
  I want to be able to list, add, and drop a course 
  
Scenario: List Course  
  Given I am on the 'Courses' page
  Then in the "title", I should see "Courses"
  And in the "body", I should see "Name"
  And in the "th", I should see "Number"
  And in the "th", I should see "Professor"
  
Scenario: Add Course
  Given I am on the 'Courses' page
  When I enter "App Desigh" for "Name"
  And I select "67274" for "Number"
  And I select "Dan Phelps" for "Professor"
  And I click button "Add"
  Then I should see "Course 67274 was successfully added"

Scenario: Drop Course
 Given I am on the 'Courses' page
 When I follow the "Drop" link for "67274"
 Then I should not see "67274"
