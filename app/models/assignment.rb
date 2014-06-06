class Assignment < ActiveRecord::Base
	belongs_to :reporter
	belongs_to :tip
end
