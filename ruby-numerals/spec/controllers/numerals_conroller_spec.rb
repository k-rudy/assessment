require 'spec_helper'

describe NumeralsController do

  describe 'POST /convert' do
    
    it 'converts the input successfully' do
      post :convert, number: '12'
      expect(assigns(:result)).to eq('twelve')
    end
  end 
end
