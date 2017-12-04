module BlogsHelper
  def body_helper(b)
    if b.body.length > 400
    content_tag(:td, (b.body.slice(0..350)) + '...')
    else
    content_tag(:td, b.body)
    end
  end

  def published_time (blog)
  	distance_of_time_in_words(blog.created_at, Time.now)
  end

end
