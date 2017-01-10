class Api::V1::ReadsController < ApplicationController
  def index
    @reads = Read.top_urls
    render json: @reads, status: 200
  end

  def create
    Read.create(read_params)
    head :created, content_type: "text/html"
  end

  private
    def read_params
      params.require(:link).permit(:title, :url)
    end
end
