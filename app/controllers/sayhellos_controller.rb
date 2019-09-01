class SayhellosController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @sayhello = Sayhello.order("created_at DESC")
  end
  
  def new
    @sayhello = Sayhello.new
  end
  def create
    Sayhello.create(sayhello_params)
    
    redirect_to controller: :sayhellos, action: :index
  
  end
  def destroy
    sayhello = Sayhello.find(params[:id])
    
    sayhello.destroy if sayhello.user_id == current_user.id
    redirect_to controller: :sayhellos, action: :index
  end
  def edit
    @sayhello = Sayhello.find(params[:id])
  end
  def update
    sayhello = Sayhello.find(params[:id])
    if sayhello.user_id == current_user.id
      sayhello.update(sayhello_params)
    end
    redirect_to controller: :sayhellos, action: :index
  end
  def show
   
    sayhellos = Sayhello.find(params[:id])
    user_id = sayhellos[:user_id]
    user= User.find(user_id)
    @say = user.sayhellos.page(params[:page]).per(5).order("created_at DESC")
    @nickname = user.nickname
    
  end
  private
  def sayhello_params
    
    params.require(:sayhello).permit(:image, :text).merge(user_id: current_user.id)
    
  
  end
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
