require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :first_name => "First Name",
      :last_name => "Last Name",
      :nationality => "Nationality",
      :email => "Email",
      :username => "Username",
      :student_id => "Student"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Nationality/)
    rendered.should match(/Email/)
    rendered.should match(/Username/)
    rendered.should match(/Student/)
  end
end
