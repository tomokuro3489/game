class RegistersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index]
  before_action :set_register, only: [:show, :edit, :update, :destroy]
  def index
    if params[:search].present?
      @register = Register.where("name LIKE ? ",'%' + params[:search] + '%')
    elsif params[:tag_id].present?
      @register = Tag.find(params[:tag_id]).registers
    else
      @register = Register.all
    end
  end

    def new
    @register=Register.new
    end

    def create
        @register = Register.new(register_params)

        @register.user_id = current_user.id
    
        if @register.save 
          redirect_to action: 'index'
        else 
          redirect_to action: 'new'
        end
    end
    
    def show
      @register = Register.find(params[:id])
    end

    def edit
      @register = Register.find(params[:id])
    end

    def update
      register = Register.find(params[:id])
      if register.update(register_params)
        redirect_to :action => "show", :id => register.id
      else
        redirect_to :action => "new"
      end
    end

    def destroy
      @register = Register.find(params[:id])
      @register.destroy
      redirect_to action: :index
    end

    def register_params
      params.require(:register).permit(:name, :genre, :image, :sport, :eve, :about, :tag_ids)
    end

    def set_register
      @register = Register.find(params[:id])
    end

end

