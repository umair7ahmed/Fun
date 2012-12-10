require 'spec_helper'

describe Course do
 
 before(:each) do
 @dan = FactoryGirl.create(:student)
 @lama = FactoryGirl.create(:student)
 @physics = FactoryGirl.create(:course, :student => @dan)
 @math = FactoryGirl.create(:course, :student => @dan )
 @appdesign = FactoryGirl.create(:course, :student => @lama)
 @umair = FactoryGirl.create(:professor, :course => @appdesign)
 @stef = FactoryGirl.create(:professor, :course => @physics)
 @stef = FactoryGirl.create(:professor, :course => @math)
end

it "should have the correct associations" do
  should belong_to(:professor)
  should belong_to(:schedule)
  shoudld have_many(:schedules)
  should have_many(:students).through(:schedule)
end

it "should validate the presence of professor_id" do
  should validate_presence_of :professor_id
end

it "should validate the presnece of name" do
  should validate_presence_of :name
end

it "should validate the presnece of number" do
  should validate_presence_of :number
end

it "should validate the numericality of number" do
  should validate_numericality_of(:number)
end

it "should create valid course factories" do
  @course1.shoudl be_valid
end

it "should accept valid numbers" do
  should allow_value(1).for(:number)
  should allow_value(10).for(:number)
  should allow_value(23313).for(:number)
end

it "should not accept invalid weights" do 
  should_not allow_value(0).for(:number)
  should_not allow_value(-4).for(:number)
  should_not allow_value(-4.55312).for(:number)
end

it "should put courses in alphabatical order" do
  Course.alphabetical.map{|c| c.name}.should = ["Appdesign", "Math", "Physics"] 
end 

it "should allow us to return the courses for a given student" do 
  Course.for_student(@dan.id).latest(5).size.should == 2 
  Course.for_student(@dan.id).latest(2).size.should == 2 
  Course.for_student(@dan.id).latest(1).size.should == 1
end 
end 
