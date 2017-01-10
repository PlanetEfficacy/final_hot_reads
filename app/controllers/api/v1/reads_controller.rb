class Api::V1::ReadsController < ApplicationController
  def create
    Read.create(read_params)
    head :created, content_type: "text/html"
  end

  private
    def read_params
      params.require(:link).permit(:title, :url)
    end
end
