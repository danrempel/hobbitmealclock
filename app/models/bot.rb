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
		CLIENT.update("It's time for breakfast! #hobbitmealclock")
	end

	def self.second_breakfast
		CLIENT.update("It's time for second breakfast! #hobbitmealclock")
	end

	def self.elevenses
		CLIENT.update("It's time for elevenses! #hobbitmealclock")
	end

	def self.lunch
		CLIENT.update("It's time for lunch! #hobbitmealclock")
	end

	def self.afternoon_tea
		CLIENT.update("It's time for afternoon tea! #hobbitmealclock")
	end

	def self.dinner
		CLIENT.update("It's time for dinner! #hobbitmealclock")
	end

	def self.supper
		CLIENT.update("It's time for supper! #hobbitmealclock")
	end
end
