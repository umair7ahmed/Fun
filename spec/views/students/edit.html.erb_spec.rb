require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :first_name => "MyString",
      :last_name => "MyString",
      :nationality => "MyString",
      :email => "MyString",
      :username => "MyString",
      :student_id => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => students_path(@student), :method => "post" do
      assert_select "input#student_first_name", :name => "student[first_name]"
      assert_select "input#student_last_name", :name => "student[last_name]"
      assert_select "input#student_nationality", :name => "student[nationality]"
      assert_select "input#student_email", :name => "student[email]"
      assert_select "input#student_username", :name => "student[username]"
      assert_select "input#student_student_id", :name => "student[student_id]"
    end
  end
end
