class NumeralsController < ApplicationController
  
  # POST /convert
  #
  def convert
    @result = Numerals::Converter.convert(params[:number])
    render :index
  end
end