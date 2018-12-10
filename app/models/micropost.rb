class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :likes
  
  has_many :like_microposts, through: :likes, source: :user
  has_many :likes
  validates :content, presence: true, length: { maximum: 255 }

end
