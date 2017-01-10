class HomeController < ApplicationController
  def index
    @reads = Read.top
  end
end
