module ApplicationHelper

	def show_name(user)
		if user
			user.name
		else
			'Unknown User'
		end
	end
end
