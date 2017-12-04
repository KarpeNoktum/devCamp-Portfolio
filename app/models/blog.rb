class Blog < ApplicationRecord
	enum status: {draft: 0, published: 1}
	  extend FriendlyId
	
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic

  after_initialize :set_topic

  def set_topic
  	self.topic_id ||= Topic.find((rand 2) + 1).id
  end

  def draft_blogs
    where(self.status = 'draft')
  end

  def published_blogs
    where(self.status = 'published')
  end

end
