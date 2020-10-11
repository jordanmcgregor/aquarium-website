class PagesController < ApplicationController
  def home
    @analyses = Analysis.all
  end
end
