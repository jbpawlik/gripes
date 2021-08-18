class InterfacesController < ApplicationController

  def index
    response = HTTParty.get('http://localhost:3000/boards')
    boards = JSON.parse(response.body)
    @boards = boards.map { |h| [h["name"], h["id"]] }
    render :index
  end

  def show
    body_response = HTTParty.get("http://localhost:3000/boards/#{params[:id]}")
    @board = JSON.parse(body_response.body)["name"]
    response = HTTParty.get("http://localhost:3000/boards/#{params[:id]}/posts")
    posts = JSON.parse(response.body)
    @posts = posts.map { |h| [h["title"], h["body"], h["username"], h["updated_at"]] }
    render :show
  end

end
