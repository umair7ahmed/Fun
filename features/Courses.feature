Feature: Courses
   In order to track courses
   As an admin
   I want to to be able to list, create, update, and delete course information


Scenario: List Courses
  Given I am on the 'courses' page
  Then in the "body", I should see "Listing courses"
  And in the "th", I should see "Name"
  And in the "th", I should see "Number"
  And in the "th", I should see "Professor"
  And in the "th", I should see "Schedule"
  And in the "body", I should see a link to "New Course"

Scenario: Create Course
  Given I am on the 'new course' page
  When I enter "App Design" for "Name"
  And I enter "70430" for "Number"
  And I enter "Dan" for "Professor"
  And I enter "2" for "Schedule"
  And I click button "Create new course"

Scenario: Update Course
  Given I am on the 'courses' page
  When I follow "Edit" link for "App Design"
  And I change Professor "Dan" to "Dan Phelps"
  And I click button "Update"
  Then in the "div#flash_notice", I should see "Course was successfully updated"

Scenario: Delete Course
  Given I am on the 'courses' page
  When I follow "Destroy" link for "App Design"
  Then I should not see "App Design"



