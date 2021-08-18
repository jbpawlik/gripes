class InterfacesController < ApplicationController

  def index
    response = HTTParty.get('http://localhost:3000/boards')
    debugger
    boards = JSON.parse(response.body).to_a
    @boards = boards.map { |h| [h["name"], h["id"] }
    render :index
  end

end

@boards = boards.map { |h| {:name => h["name"], :id => h["id"]} }

# number = @boards.length-1
# number.times do
#   ticker = 0
#   @boards[ticker]["name"]
#   ticker = ticker + 1
# end