module BlogHelper

	def set_active(page)
		@welcome_active = ""
		@about_active = ""
		@thoughts_active = ""
		@contact_active = ""
		case page
			when "welcome"
				@welcome_active = "active"
				@header_icon = "plane"
			when "about"
				@about_active = "active"
				@header_icon = "user"
			when "thoughts"
				@thoughts_active = "active"
				@header_icon = "comment"
			when "contact"
				@contact_active = "active"
				@header_icon = "phone"
		end
		@header_text = page
	end

end
