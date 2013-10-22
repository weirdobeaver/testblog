class Vote
	include Mongoid::Document

	belongs_to :user
	belongs_to :comment

	field :value, type: Integer

	validates_inclusion_of :value, in: [1, -1], allow_blank: false
	validate :check_user_uniqueness, on: :create

	after_create :check_abusiveness

	def check_abusiveness
		comment.check_abusiveness
	end

	def check_user_uniqueness
		if Vote.where(user_id: user_id, comment_id: comment_id).exists?
			errors.add(:user_id, "You can't vote twice, notty, notty.")
		end
	end	
end
