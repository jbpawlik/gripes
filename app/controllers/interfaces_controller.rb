class InterfacesController < ApplicationController

  def index
    response = HTTParty.get('http://localhost:3000/boards')
    boards = JSON.parse(response.body).to_a
    @boards = boards.map { |h| [h["name"], h["id"]] }
    render :index
  end

  def show
    render :show
  end

end
