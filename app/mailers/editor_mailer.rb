class EditorMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def notification_email tip
	@tip = tip
	mail(to: 'armiemargaretlee@yahoo.com', subject: 'New Tip Added in Tip Tracker')
  end

end
