class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :tweet, optional: true

  validates :body, length: {in: 6..1000}, allow_blank: false

  def tweet_type
    if tweet_id? && body?
      "quote-tweet"
    elsif tweet_id?
      "retweet"
    else
      "tweet"
    end
 end
end
