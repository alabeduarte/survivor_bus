require 'spec_helper'

describe BusService do
  let(:service) { BusService.new }

  context "routes" do
    it "should return correct json result" do
      json_result = service.route_info(744)
      route_info = json_result[0]
      route_info.should have_key "name"
      route_info.should have_key "externalRouteId"
      route_info.should have_key "nomeItinerario"
      route_info.should have_key "stops"
    end
  end

  context "stops" do
    it "should return correct json result" do
      json_result = service.route_info(744)
      some_stop = json_result[0]["stops"][0]
      some_stop.should have_key "codigo"
      some_stop.should have_key "latitude"
      some_stop.should have_key "longitude"
      some_stop.should have_key "logradouro"
      some_stop.should have_key "referencia"
      some_stop.should have_key "bairro"
    end
  end

end
