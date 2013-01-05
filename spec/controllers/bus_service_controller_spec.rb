require 'spec_helper'

describe BusServiceController do

  let(:service) { mock(BusService) }
  before { BusService.stub(:new).and_return service }

  describe "GET 'show'" do
    it "should call service to retrieve route info" do
      route_code = "500"
      service.should_receive(:route_info).with(route_code)
      get 'show', :id => route_code, :format => :json
      response.should be_success
    end
  end

end
