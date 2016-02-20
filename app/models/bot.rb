class Bot < ActiveRecord::Base
	def self.search_words(words)
		CLIENT.search(words, lang: "en").first.text
	end

	def self.respond(name)
		"@" + name + " " + Response.order_by_rand.first.message
	end

	def self.find_user(number, words)
		# find tweets
		CLIENT.search(words, lang: "en").take(number).each { |t|

			# record twitter user and tweet id for future reference
			User.create(name: t.user.screen_name, tweet_id: t.id.to_s)

			# send a tweet by calling the respond method,
			# the new tweet is a reply to the saved tweet_id
			CLIENT.update(Bot.respond(t.user.screen_name), in_reply_to_status_id: t.id)
		}
	end
	
	def self.breakfast
		CLIENT.update("Glory be! Time to make breakfast! #hobbitmealclock")
	end

	def self.second_breakfast
		CLIENT.update("One was clearly not enough. It's time to have second breakfast! #hobbitmealclock")
	end

	def self.elevenses
		CLIENT.update("Elevenses, anyone? #hobbitmealclock")
	end

	def self.lunch
		CLIENT.update("Just a spot of lunch! #hobbitmealclock")
	end

	def self.afternoon_tea
		CLIENT.update("Feeling peckish? Must be time for afternoon tea. #hobbitmealclock")
	end

	def self.dinner
		CLIENT.update("Adventures. Nasty disturbing uncomfortable things! Make you late for dinner! #hobbitmealclock")
	end

	def self.supper
		CLIENT.update("Ahhh, supper. A meal fit for a Hobbit!  #hobbitmealclock")
	end
end
