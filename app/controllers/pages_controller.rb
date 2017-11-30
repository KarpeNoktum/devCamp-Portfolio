class PagesController < ApplicationController
include RandomPage

  def home
  	@posts = Blog.all
  	@skills = Skill.all
  	@page_title = "Josh Beere | Home"
    @home = 'nav-link active'
    @page = generate
  end

  def about
    @about = 'nav-link active'
  	@page_title = "Josh Beere | About"
  end

  def contact
    @contact = 'nav-link active'
  	@page_title = "Josh Beere | Contact"
  end

  def test_page
  end
end
