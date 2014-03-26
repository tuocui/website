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
				@title = "Tony Cui"
			when "thoughts"
				@thoughts_active = "active"
				@header_icon = "comment"
				@title = "Thoughts - Tony Cui"
			when "contact"
				@contact_active = "active"
				@header_icon = "phone"
				@title = "Contact - Tony Cui"
		end
		@header_text = page
	end

end
