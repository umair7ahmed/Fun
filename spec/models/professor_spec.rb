require 'spec_helper'

describe Professor do
  
   before(:each) do
 @dan = FactoryGirl.create(:student, :firstname => "Dan", :lastname => "Bob", :username => "dan12")
 @lama = FactoryGirl.create(:student, :firstname => "lama", :lastname => "al", :username => "lama12")
 @physics = FactoryGirl.create(:course, :student => @dan)
 @math = FactoryGirl.create(:course, :student => @dan )
 @appdesign = FactoryGirl.create(:course, :student => @lama)
 @umair = FactoryGirl.create(:professor, :course => @appdesign)
 @stef = FactoryGirl.create(:professor, :course => @physics)
 @stef = FactoryGirl.create(:professor, :course => @math)
end

   it "should create the factories correctly" do
     @dan.should be_valid
     @lama.should be_valid
     @physics.should be_valid
     @math.should be_valid
     @appdesign.should be_valid
     @umair.should be_valid
     @stef.should be_valid
  end

   
   it "should have valid attributes" do
     @dan.firstname.should == "Dan"
     @lama.firstname == "lama"
   end
 
   
   it "should return all the courses for a given professor" do
   Course.for_professor(@stef.id).count.should == 2
   Course.for_professor(@stef.id).alphabetical.map{|p| p.name}.should == ["physics", "math"]
  end

   describe "Validates good emails" do
    it {should allow_value("fred@fred.com").for(:email)}
    it {should allow_value("fred@qatar.cmu.edu").for(:email)}
    it {should allow_value("my_fred@fred.org").for(:email)}
    it {should allow_value("fred123@fred.gov").for(:email)}
    it {should allow_value("my.fred@fred.net").for(:email)}
end

     describe "Rejects bad emails" do
    it {should_not allow_value("fred").for(:email)}
    it {should_not allow_value("fred@fred,com").for(:email)}
    it {should_not allow_value("fred@fred.uk").for(:email)}
    it {should_not allow_value("my fred@fred.com").for(:email)}
    it {should_not allow_value("fred@fred.con").for(:email)}
end

  
end
