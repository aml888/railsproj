class Tip < ActiveRecord::Base
	has_many :assignments
	has_many :reporters, through: :assignments

	accepts_nested_attributes_for :reporters
	
	validates :news_tip, :source, presence: {message: 'must not be blank'}
end
