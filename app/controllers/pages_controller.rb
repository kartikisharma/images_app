class PagesController < ApplicationController

  before_action :authorize, only: [:imagelist]

  def imagelist
  end
end
