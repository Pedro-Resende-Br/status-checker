class ServersController < ApplicationController
  before_action :set_server, only: [:show, :edit, :update, :destroy]

  def index
    @server = Server.all
  end

  def show
    @server = Server.find(params[:id])
  end

  def new
    @server = Server.new
  end

  def create
    @server = Server.new(status: params["status"])
    if @server[:status] == "UP" || @server[:status] == "DOWN"
      @server.save
    end
    index
    redirect_to information_path
  end

  def edit
    @server = Server.find(params[:id])
  end

  def update
    @server.update(params)
  end

  def destroy
    @server.destroy
  end

  private

  def set_server
    @server = Server.find(params[:id])
  end
  
end
