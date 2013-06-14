class Comment < ActiveRecord::Base

  minimum_commenter_length = 3
  maximum_commenter_length = 30

  minimum_body_length = 3
  maximum_body_length = 500

  belongs_to :post
  attr_accessible :body, :commenter

  validates :commenter, :presence => true,
            :length => { :within => minimum_commenter_length..maximum_commenter_length}
  

  validates :body, :presence => true,
            :length => { :within => minimum_body_length..maximum_body_length }

end
