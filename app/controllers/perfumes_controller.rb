class PerfumesController < ApplicationController
    def index
    end
  
    def new
      @perfume = Perfume.new
    end
  
    def show
      @perfume = Perfume.find_by(id: params[:id])
    end
  
    def create
      @perfume = Perfume.new(perfume_params)
      params[:perfume][:question] ? @perfume.question = params[:perfume][:question] : false
      params[:perfume][:question2] ? @perfume.question2 = params[:perfume][:question2] : false
      params[:perfume][:question3] ? @perfume.question3 = params[:perfume][:question3] : false
      params[:perfume][:question4] ? @perfume.question4 = params[:perfume][:question4] : false
      params[:perfume][:question5] ? @perfume.question5 = params[:perfume][:question5] : false
      params[:perfume][:question6] ? @perfume.question6 = params[:perfume][:question6] : false
      if @perfume.save
          flash[:notice] = "診断が完了しました"
          redirect_to perfume_path(@perfume.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def perfume_params
        params.require(:perfume).permit(:id, question: [])
    end
  end
  