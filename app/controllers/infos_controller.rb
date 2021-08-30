class InfosController < ApplicationController
  before_action :set_info, only: [:show, :edit, :update, :destroy]

  def index
    @info = Info.all
  end

  def show
    @info = Info.find(params["id"])
  end

  def new
    @info = Info.new
  end


  def create
    @info = Info.new(status: params["status"], text: params["text"])
    if @info[:status] == "UP" || @info[:status] == "DOWN"
      @info.save
    end
    redirect_to information_path
  end

  def edit
    @info = Info.find(params["id"])
  end

  def update
    @info = Info.where(status: params["status"]).last
    @info.update(text: params["text"])
  end

  def destroy
    @info.destroy
  end
  
  private

  def set_info
    @info = Info.find(params["id"])
  end

end
