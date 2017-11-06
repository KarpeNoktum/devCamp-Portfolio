class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  	@page_title = "Josh Beere | Home"
  end

  def about
  	@page_title = "Josh Beere | About"
  end

  def contact
  	@page_title = "Josh Beere | Contact"
  end
end
