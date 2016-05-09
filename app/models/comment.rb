class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article

	validates_presence_of :article_id
	validates_presence_of :user_id
	validates :body, presence: true, length: { minimum: 10 }
end