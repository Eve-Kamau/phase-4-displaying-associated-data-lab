class UsersController < ApplicationController

def index
    users = User.all
    render json: users
end

def show
user = User.find_by(params[:id])
render json: user,include: :items, except:[:user_id, :created_at, :updated_at]
end

end
