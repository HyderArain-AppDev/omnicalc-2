class ApplicationController < ActionController::Base
  def street_to_coords_form
    render ({ :template => "coords_form.html.erb"})
  end
  def coords_result
    @street_address = params.fetch("address")
    @maps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + @street_address + "&key=AIzaSyD8RrOFB0dPsF-leqeFJdmX3yOvcQbfNyY"
    @raw_json = open(@maps_url).read
    @parsed_json = JSON.parse(@raw_json)
    @results = @parsed_json.fetch("results")
    @first_res = @results.at(0)
    @geom = @first_res.fetch("geometry")
    @location = @geom.fetch("location")
    @lat = @location.fetch("lat")
    @long = @location.fetch("lng")
    
    render ({ :template => "coords_result.html.erb"})
  end
end
