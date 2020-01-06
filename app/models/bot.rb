class Bot < ApplicationRecord
  def self.tweet(message)
  	CLIENT.consumer_key ||= ENV['API_KEY']
  	CLIENT.consumer_secret ||= ENV['API_SECRET_KEY']
  	CLIENT.access_token ||= ENV['ACCESS_TOKEN']
  	CLIENT.access_token_secret ||= ENV['ACCESS_SECRET_TOKEN']
    CLIENT.update(message)
  end
end
