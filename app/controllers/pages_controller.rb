class PagesController < ApplicationController
  def home
    @analyses = Analysis.all
  end
  def sitemap
    headers['Content-Type'] = 'application/xml'
  end
end
