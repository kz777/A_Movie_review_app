class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews
	
	has_attached_file :image, styles: { :medium => "300x300>", :thumb => "100x100"}
  	validates_attachment_content_type :image, content_type: {content_type: ["image/jpeg", "image/jpeg", "image/png", "image/gif"]}
end
