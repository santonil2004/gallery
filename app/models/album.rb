class Album < ActiveRecord::Base
	belongs_to :user

	#has_one :
	#has_and_belongs_to_many


	#validates:title, presence:true
	# or we can write as follow
	validates:title, {:presence=>true}
end
