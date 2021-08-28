class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  
  def index
    @message = Message.all.reverse[0..9]
  end

  def new
    @message = Message.new
  end

  def create
    @server = Server.all.last
    @message_info = MessageInfo.where(status: @server.status).last
    @message = Message.new(status: @server.status, text: @message_info.text)
    @message.save
  end

  def destroy
    @message.destroy
  end
  
  private

  def set_message
    @message = Message.find(params[:id])
  end

end
