require 'spec_helper'

describe "courses/edit" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :name => "MyString",
      :number => 1,
      :professor_id => 1,
      :schedule_id => 1
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path(@course), :method => "post" do
      assert_select "input#course_name", :name => "course[name]"
      assert_select "input#course_number", :name => "course[number]"
      assert_select "input#course_professor_id", :name => "course[professor_id]"
      assert_select "input#course_schedule_id", :name => "course[schedule_id]"
    end
  end
end
