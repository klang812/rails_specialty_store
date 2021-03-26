require 'rails_helper'

describe "the user delete process" do
  before(:each) do
    User.destroy_all
  end

  it "deletes a user account" do
    user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd')
    user.save
    visit '/'
    click_link 'Log In'
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_on 'Log in'
    
    click_link 'Profile'
    click_on 'Cancel my account'
    expect(page).to have_content "Bye! Your account has been successfully cancelled. We hope to see you again soon."
  end
end