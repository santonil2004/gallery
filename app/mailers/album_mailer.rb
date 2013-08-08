class AlbumMailer < ActionMailer::Base
  default from: "santonil2003@yahoo.com"

  def notify_user(album)
  	@user = album.user
  	@album = album

  	mail(
  		to:@user.email, 
  		subject: "Album created by #{@user.email}",
  		body: "Dear #{@user.email} , Your Album has been created"
  		)
  end
end
