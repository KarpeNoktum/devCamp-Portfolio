module ApplicationHelper
	def login_helper
		if current_user.is_a?(GuestUser)
        (link_to "Sign In", new_user_session_path) + " | " +
        (link_to "Sign Up", new_user_registration_path)
       else
        link_to "Sign Out", destroy_user_session_path, method: :delete

      end
	end

	def session_msg_helper layout

	  if session[:source]
      content_tag(:p, "Thanks for visiting me from #{session[:source]}!", class: "#{layout}_session_message")
    end
  end

  def copyright_generator
     JoshsViewTool::Renderer.copyright "Josh Beere", "All rights reserved"
  end

  def admin
    logged_in?(:site_admin)
  end



	
end
