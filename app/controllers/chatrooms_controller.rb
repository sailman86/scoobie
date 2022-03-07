class ChatroomsController < ApplicationController

  def index
  end

  def show
    @message = Message.new()
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
  end
end
