#encoding:utf-8
require "win32ole"
require_relative "twitruby.rb"
require "kconv"
=begin
	GPL v3 LICENSE
	Copyleft (C) alphaKAI 2013 http://alpha-kai-net.info
=end
class NowPlayingTweet
	def initalize
		consumer_key = ""
		consumer_secret = ""
		access_token = ""
		access_token_secret = ""

		cunsmer_array=[]
		cunsmer_array << consumer_key << consumer_secret << access_token << access_token_secret
		@tr=TwitRuby.new
		@tr.initalize_connection(cunsmer_array)
	end
	def getnow
		itunes=WIN32OLE.new("iTunes.Application")
		track=itunes.CurrentTrack
		return track
	end
	def tweet(track)
		@tr.update("#NowPlaying Name:#{track.Name.kconv(Kconv::UTF8, Kconv::SJIS)} Artist#{track.Artist.kconv(Kconv::UTF8, Kconv::SJIS)}")
	end
	def loop_check
		now=self.getnow
		self.tweet(now)
		begin
			loop do
				cknow=self.getnow
				unless cknow.Name == now.Name
					self.tweet(cknow)
					now=self.getnow
				end
			end
		rescue
			retry
		end
	end
end

npt=NowPlayingTweet.new
npt.initalize
npt.loop_check