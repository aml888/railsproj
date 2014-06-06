class Reporter < ActiveRecord::Base
	has_many :assignments
	has_many :tips, through: :assignments
end
