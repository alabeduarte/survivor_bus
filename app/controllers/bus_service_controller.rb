class BusServiceController < ApplicationController
  respond_to :json

  def show
    bus_service = BusService.new
    json_data = bus_service.route_info(params[:id])
    respond_with json_data
  end

end
