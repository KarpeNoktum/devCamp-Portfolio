module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
  	super || OpenStruct.new(name: "Guest",
  							 first_name: "Guest",
  							  last_name: "Guest",
  							   email: "guest@example.com")
  end
 end