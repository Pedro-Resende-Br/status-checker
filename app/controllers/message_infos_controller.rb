class MessageInfosController < ApplicationController
  before_action :set_message_info, only: [:show, :edit, :update, :destroy]

  def index
    @message_info = MessageInfo.all
  end

  def show
    @message_info = MessageInfo.find(params[:id])
  end

  def new
    @message_info = MessageInfo.new
  end


  def create
    @message_info = MessageInfo.new(params)
    if @messafe_info[:status] == "UP" || @messafe_info[:status] == "DOWN"
      @messafe_info.save
    else
      render :new
    end
  end

  def edit
    @message_info = MessageInfo.find(params[:id])
  end

  def update
    @message_info.update(params)
  end

  def destroy
    @message_info.destroy
  end
  
  private

  def message_info
    @message_info = MessageInfo.find(params[:id])
  end

end
