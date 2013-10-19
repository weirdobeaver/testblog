class Vote
	include Mongoid::Document

	belongs_to :user
	belongs_to :comment

	field :value, type: Integer

	validates_inclusion_of :value, in: [1, -1], allow_blank: false

end
