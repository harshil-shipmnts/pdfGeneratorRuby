class ConverterController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @html = params[:html]
    render pdf: 'file_name', dpi: 500, print_media_type: true
  end
end