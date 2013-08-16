class SupportMailer < ActionMailer::Base
  default from: "millisami@gmail.com"

  def notify(params)
    mail(to: "santonil2003@gmail.com",
         subject: params[:subject],
         body: params[:messege])
  end
end
