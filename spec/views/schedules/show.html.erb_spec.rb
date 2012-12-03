require 'spec_helper'

describe "schedules/show" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
      :course_id => 1,
      :student_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
