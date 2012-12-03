require 'spec_helper'

describe "schedules/new" do
  before(:each) do
    assign(:schedule, stub_model(Schedule,
      :course_id => 1,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedules_path, :method => "post" do
      assert_select "input#schedule_course_id", :name => "schedule[course_id]"
      assert_select "input#schedule_student_id", :name => "schedule[student_id]"
    end
  end
end
