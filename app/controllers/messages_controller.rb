class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  
  def index
    @message = Message.all.reverse[0..9]
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @server = Server.all.last
    @message_info = Info.where(status: @server.status).last
    @message = Message.new(status: @server.status, text: @message_info.text)
    @message.save
    redirect_to messages_path
  end

  def destroy
    @message.destroy
  end

  def edit_information
    @server = Server.all.last
    @up = Info.where(status: "UP").last
    @down = Info.where(status: "DOWN").last
  end
  
  private

  def set_message
    @message = Message.find(params[:id])
  end

end
