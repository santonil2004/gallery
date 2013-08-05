require_relative '../spec_helper'

#describe "User Login" do 
#	it "signin user" do
#		visit '/users/sign_in'
#		fill_in 'Email', with: 'sanil@yahoo.com'
#		fill_in 'Password', with: 'sanil_12345'
#		click_button 'Sign in'
#		expect(page).to have_content 'Signed in successfully'
#	end	
#end

describe "the signin process", :type => :features do
  before :each do
    User.create(:email => 'sanil@yahoo.com', :password => 'sanil_12345')
  end

  it "signs me in" do
    visit '/users/sign_in'
   
    fill_in 'Email', :with => 'sanil@yahoo.com'
    fill_in 'Password', :with => 'sanil_12345'
 
    click_button 'Sign in'
    expect(page).to have_content 'successfully'
  end

   it "signs me in" do
    visit '/users/sign_in'
   
    fill_in 'Email', :with => 'sanil@yahoo.cosadasm'
    fill_in 'Password', :with => 'sanil_12345'
 
    click_button 'Sign in'
    expect(page).to have_content 'successfully'
  end
end