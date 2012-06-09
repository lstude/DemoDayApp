class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :setup_api_info
  
  private
  
  def setup_api_info
    @api_key = "5875231" # Replace with your OpenTok API key.
    @api_secret = "8f5cde4ade6b11ea22cfd73ea345c64b4e423d29"  # Replace with your OpenTok API secret.

    @opentok = OpenTok::OpenTokSDK.new @api_key, @api_secret
    @location = 'localhost'
    @session_id = @opentok.create_session(@location)

    @token = @opentok.generate_token :session_id => @session_id, :role => OpenTok::RoleConstants::PUBLISHER, :connection_data => "username=Bob, level=4"
  end
end
