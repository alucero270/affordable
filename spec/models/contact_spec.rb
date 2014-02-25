require 'spec_helper'

describe Contact do 
	it "has a valid factory" do
		FactoryGirl.build(:contact).should be_valid
	end
    it "is invalid without a firstname" do 
 		FactoryGirl.build(:contact, lastname: nil).should_not be_valid 
 	end

 	 it "is invalid without a lastname" do 
 		FactoryGirl.build(:contact, lastname: nil).should_not be_valid 
 	end

 	it "is invalid without an email" do
 		FactoryGirl.build(:contact, email: nil).should_not be_valid
 	end
	
	it "returns a contact's full name as a string" do 
 	 	FactoryGirl.build(:contact, firstname: "John", lastname: "Doe").name.should == "John Doe" 
 	end 

 describe "filter last name by letter" do
	before :each do 
		@smith = FactoryGirl.build(:contact, lastname: "Smith")
	end
 end 
end
	