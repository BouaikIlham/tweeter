class Tweet < ApplicationRecord
  belongs_to :user

  validates :body, length: {in: 6..1000}, allow_blank: false
end
