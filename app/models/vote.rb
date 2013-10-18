class Vote
	include Mongoid::Document

	belongs_to :user
	belongs_to :comment

	field :value, type: Integer

end
