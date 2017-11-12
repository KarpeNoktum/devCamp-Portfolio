module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
		before_action :set_page_defaults
		
	end

	def set_page_defaults
		@page_title = "Josh Beere | Portfolio"
		@seo_keywords = "Josh Beere Portfolio"
		@icon = "https://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png"
		
	end

end