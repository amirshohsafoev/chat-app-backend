class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end


  def show
    @user = User.find(params[:id])
    render json: @user
  end


  def create
    @user = User.create(username: params[:username], password: params[:password])

    if @user.valid?
      @token = JWT.encode({user_id: @user.id}, 'mYw3bToKeN')
      render json: {user: @user, jwt: @token}, status: :created
    else
      render json: {error: 'Can not create the user'}, status: :not_acceptable
    end
  end


  def destroy
    @user = User.destroy
    render json: {messages: 'Deleted'}, status: :ok
  end


  # def test
  #   ActionCable.server.broadcast \
  # "chatroom_1", { title: "New things!", body: "All that's fit for print" }
  # end

  
end
