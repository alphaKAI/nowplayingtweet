#encoding:utf-8
require_relative "twitruby.rb"
#Get Twitter's AccessToken Script using twitruby

class TwitRuby
	def get_token(consumer_keys)
			consumer_key = consumer_keys[0]
			consumer_secret = consumer_keys[1]
			access_token = consumer_keys[2]
			access_token_secret = consumer_keys[3]
			
			@consumer = OAuth::Consumer.new(
			consumer_key,
			consumer_secret,
			:site => "http://api.twitter.com/"
			)
			
			request_token = @consumer.get_request_token
			system("start #{request_token.authorize_url}")
			
			oauth_array = oauth_init
			access_token = oauth_array[0]
			access_token_secret = oauth_array[1]
			
			puts "access_token\t#{access_token}"
			puts "access_token_secret\t#{access_token_secret}"
	end
end

consumer_key        = ""
consumer_secret     = ""
access_token        = ""
access_token_secret = ""

cunsmer_array=[]

print "Please input ConsumerKey => "
consumer_key = STDIN.gets.chomp
puts ""
	
print "Please input ConsumerSecret => "
consumer_secret = STDIN.gets.chomp
puts ""

cunsmer_array << consumer_key << consumer_secret << access_token << access_token_secret

twi=TwitRuby.new
twi.get_token(cunsmer_array)