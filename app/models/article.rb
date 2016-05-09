class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :article_categories
	has_many :categories, through: :article_categories

	belongs_to :user

	validates :title, presence: true, length: { minimum: 3, maximum: 75}
	validates :body, presence: true, length: { minimum: 10, maximum: 1500}
	validates :user_id, presence: true
	
	
end
