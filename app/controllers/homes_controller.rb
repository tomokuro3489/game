class HomesController < ApplicationController
  
      def index
        
        @register = Register.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study =  Register.where(name:"シューティングゲーム")
        @study1 = Tag.where(name:"シューティングゲーム")
        @study2 = Tag.where(name:"シュミレーションゲーム")
        @study3 = Tag.where(name:"レーシングゲーム")
        @study4 = Tag.where(name:"アドベンチャーゲーム")
        @study5 = Tag.where(name:"ロールプレイングゲーム")
        @study6 = Tag.where(name:"パズルゲーム")
        @study7 = Tag.where(name:"音楽ゲーム")
        @study8 = Tag.where(name:"トレーディングカード")
      end 
 
      def show
        @register = Register.find(params[:id])
      end

      def register_params
        params.require(:register).permit(:name, :genre, :image, :sport, :eve, :about, :tag_ids)
      end
end
