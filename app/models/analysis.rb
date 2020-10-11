class Analysis < ApplicationRecord
  has_many :questions
  has_many :factors
  extend FriendlyId
  friendly_id :analysis_article_title, use: :slugged
end
