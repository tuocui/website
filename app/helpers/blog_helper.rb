module BlogHelper

	def set_active(page)
		@welcome_active = ""
		@about_active = ""
		@thoughts_active = ""
		@contact_active = ""
		case page
			when "welcome"
				@welcome_active = "active"
				@title = "Tony Cui"
			when "thoughts"
				@thoughts_active = "active"
				@title = "Thoughts - Tony Cui"
			when "contact"
				@contact_active = "active"
				@title = "Contact - Tony Cui"
      when "analytics"
        @analytics_active = "active"
        @title = "Analytics"
		end
		@header_text = page
	end

end
