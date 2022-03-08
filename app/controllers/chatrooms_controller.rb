class ChatroomsController < ApplicationController

  def index
    @chatrooms = policy_scope(Chatroom).all
  end

  def show
    @message = Message.new()
    @chatroom = Chatroom.find(params[:id])
    authorize @chatroom
  end
end
