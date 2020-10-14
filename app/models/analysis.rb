class Analysis < ApplicationRecord
  has_many :questions
  has_many :factors
  extend FriendlyId
  friendly_id :analysis_article_title, use: :slugged

  def should_generate_new_friendly_id? #will change the slug if the name changed
    analysis_article_title_changed?
  end
end
