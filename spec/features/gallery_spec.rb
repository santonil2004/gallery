require_relative '../spec_helper'

describe "Gallery Ownership"  do
	it "logged in user can create gallery " do

		user = User.create!(:email => 'sanil@yahoo.com', :password => 'sanil_12345')

		user2 = User.create!(:email => 'sanil@gmail.com', :password => 'sanil_12345')

		visit '/users/sign_in'
   		
   		#for manual filling
    	# fill_in 'Email', :with => 'sanil@yahoo.com'
    	# fill_in 'Password', :with => 'sanil_12345'

    	fill_in 'Email', :with => user.email
    	fill_in 'Password', :with => user.password
 
    	click_button 'Sign in'
    	#expect(page).to have_content 'successfully'


    	##visit new_album_path #equivalent to /albums/new
    	click_link 'New Album'

    	fill_in 'Title', :with => 'auto gallery'
    	click_button 'Create Album'


    	expect(Album.last.title).to eq('auto gallery') # data base asserstion
    	
    	expect(Album.last.user).to eq(user) # data base asserstion

    	expect(Album.last.user).to eq(user)

    	expect(Album.last.user).not_to eq(user2)

    	#expect(page).to have_content 'Album was successfully created'

    	#save_and_open_page

	end

end