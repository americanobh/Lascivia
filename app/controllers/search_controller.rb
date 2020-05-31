class SearchController < ApplicationController

  def handle_search
    @kw = params[:keyword]
  end
end
