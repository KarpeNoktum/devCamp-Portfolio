module DefaultPageContent
	extend ActiveSupport::Concern

	included do 
		before_action :set_page_defaults
		
	end

	def set_page_defaults
		@page_title = "Josh Beere | Portfolio"
		@seo_keywords = "Josh Beere Portfolio"
		
	end

end