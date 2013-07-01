class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :photo

  minimum_name_length = 3
  maximum_name_length = 12

  minimum_title_length = 3
  maximum_title_length = 30

  minimum_content_length = 3
  maximum_content_length = 2000


  validates :name, :presence => true,
            :length => { :within => minimum_name_length..maximum_name_length}
  

  validates :title, :presence => true,
            :length => { :within => minimum_title_length..maximum_title_length }
  

  validates :content, :presence => true,
            :length => { :within => minimum_content_length..maximum_content_length  }
 

  has_many :comments, :dependent => :destroy

  has_attached_file :photo, 
                    :styles => {:medium => "800x600>"},
                    :storage => :s3,
                    :s3_credentials => Rails.root.join('config/s3.yml'),
                    :path => ":attachment/:id/:style.:extension",
                    :bucket => 'blog219photos'

end
