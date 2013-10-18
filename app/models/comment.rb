class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
	
  field :body, type: String

  validates_presence_of :body

  belongs_to :user

  embedded_in :post


end
