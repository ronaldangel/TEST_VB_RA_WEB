require 'redditkit'
class RedditClient

  attr_accessor :client

  def intialize (user, password)
    @client = RedditKit::Client.new user, password
  end

  def get_article (topic)
  	posts = @client.posts topic.to_s, :category => :top, :time => :all
    @client.upvote 
    return posts.first
  end

end