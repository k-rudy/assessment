require "spec_helper"

describe NumeralsController do

  describe "routing" do

    it "routes GET /numerals to :index" do
      expect(get('/numerals')).to route_to('numerals#index')
    end

    it "routes POST /numerals/convert to :convert" do
      expect(post('/numerals/convert')).to route_to('numerals#convert')
    end
  end
end
