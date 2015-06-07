require 'net/http'
require 'oauth'




  def prepare_access_token(oauth_token, oauth_token_secret)
    consumer = OAuth::Consumer.new("APIKey", "APISecret", { :site => "https://api.twitter.com", :request_token_path => '/oauth/request_token', :access_token_path => '/oauth/access_token', :authorize_path => '/oauth/authorize', :scheme => :header })
    token_hash = { :oauth_token => oauth_token, :oauth_token_secret => oauth_token_secret }  
    access_token = OAuth::AccessToken.from_hash(consumer, token_hash )
    return access_token
  end

   def send_tweet
      token = "rBbH4utFFNcG5AY3DlJMHhgYn"
      secret = "4pu6ADuYxLNM9ko4pRtM5HBCn5zNJquBECqeoeBNaGsMbO2qPU"
     msg = {'status' => 'Hey look I can tweet via OAuth!'}
    accesstoken = prepare_access_token(token, secret)
    accesstoken.post('https://api.twitter.com/1/statuses/update.json', msg, { 'Accept' => 'application/xml' })
   end




send_tweet
prepare_access_token