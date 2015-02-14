require 'spec_helper'

describe User do
  let(:valid_attributes) {
  	{
  		emails: "dan85.cardenas@gmail.com",
  		password: "treehouse1234",
  		password_confirmation: "treehouse1234",
  	}
  }

  context "validations" do
  	let(:user) { User.new(valid_attributes) }

  	before do
  		User.create(valid_attributes)
  	end
  	
		it "requires an emails" do 
  		expect(user).to validate_presence_of(:emails)
  	end

  	it "requires a unique emails" do 
  		expect(user).to validate_uniqueness_of(:emails)
  	end

  	it "requires the email address to look like an email" do 
  		user.emails = "dan"
  		expect(user).to_not be_valid
  	end


  end
end
