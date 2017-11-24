class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  	@page_title = "Josh Beere | Home"
    @home = 'nav-link active'
  end

  def about
    @about = 'nav-link active'
  	@page_title = "Josh Beere | About"
  end

  def contact
    @contact = 'nav-link active'
  	@page_title = "Josh Beere | Contact"
  end
end
