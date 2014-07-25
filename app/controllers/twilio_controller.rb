class TwilioController < ApplicationController

  def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = ENV["ACCOUNT_SID"]
    auth_token = ENV["AUTH_TOKEN"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    @message = @client.account.messages.create({:to => "+1"+"#{number}",
                                                :from => "+18622033911",
                                                :body => "#{message}"})
    redirect_to dashboard_path
  end

end
