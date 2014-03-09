require 'spec_helper'

describe User do

  before do
  	@user = User.new(username: "Example")
  end

  subject { @user }

  it { should respond_to(:username) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  describe "when name is not present" do

	  before { @user.username = ' ' }
	  	it { should_not be_valid }
	end

  describe "when name is already taken" do
	  before do
	  	user_with_same_username = @user.dup
	  	user_with_same_username.save
	  end
	  it { should_not be_valid }
	end

	describe "when password is not present" do
		before { @user.password = @user.password_confirmation = " "}
		it { should_not be_valid}
	end

	describe "when password doesn't match password_confirmation" do
		before { @user.password_confirmation = "mismatch"}
		it { should_not be_valid}
	end

end
