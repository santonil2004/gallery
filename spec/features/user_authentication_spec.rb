require_relative '../spec_helper'

describe "User Authentication" do 
	it "signup user" do
		visit '/users/sign_up'
		fill_in 'Email', with: ''
		fill_in 'Password', with: 'sanil_12345'
		click_button 'Signed up'
		expect(page).to have_content 'Signed up!'
	end	
end