module RandomPage

	extend ActiveSupport::Concern

def generate
	case (rand 4)
	when 0
		then about_me_path
	when 1
		then contact_path
	when 2
		then blogs_path
	when 3
		then portfolios_path
	end
end

end
