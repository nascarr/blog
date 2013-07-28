module PostsHelper

	def photo(message)
		image_tag message.photo.url(:medium)
	end

end
