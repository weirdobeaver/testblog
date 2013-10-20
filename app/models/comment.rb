class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
	
  field :body, type: String

  validates_presence_of :body

  belongs_to :user
  belongs_to :post

  has_many :votes

  def votes_value
  	votes_count = 0
  	votes.each do |vote|
  		votes_count = votes_count + vote.value
  	end
  	votes_count
  end
end
