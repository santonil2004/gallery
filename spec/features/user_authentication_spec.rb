require_relative '../spec_helper'

describe "User Authentication" do 
	it "signup user" do
		visit '/users/sign_up'
		fill_in 'Email', with: 'connect.subash@gmail.com'
		fill_in 'Password', with: 'secret'
		click_button 'Sign up'
		expect(page).to have_content 'Signed up!'
	end
	
end