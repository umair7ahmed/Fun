require 'spec_helper'

describe "courses/new" do
  before(:each) do
    assign(:course, stub_model(Course,
      :name => "MyString",
      :number => 1,
      :professor_id => 1,
      :schedule_id => 1
    ).as_new_record)
  end

  it "renders new course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => courses_path, :method => "post" do
      assert_select "input#course_name", :name => "course[name]"
      assert_select "input#course_number", :name => "course[number]"
      assert_select "input#course_professor_id", :name => "course[professor_id]"
      assert_select "input#course_schedule_id", :name => "course[schedule_id]"
    end
  end
end
