class HomesController < ApplicationController
  search= Register.includes(:tags).where(registers_tags: {tag_id: 1}).references(:tags)
      def index
        
        @register = Register.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @registerall = Register.all#.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
        @study =  RegisterTag.where(tag_id: 1)#.find(Like.group(:post_id).order(‘count(post_id) desc’).pluck(:post_id))
        @search= Register.includes(:tags).where(register_tags: {tag_id: 1}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        
        @study1 =  Register.includes(:tags).where(register_tags: {tag_id: 2}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study2 =  Register.includes(:tags).where(register_tags: {tag_id: 3}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study3 =  Register.includes(:tags).where(register_tags: {tag_id: 4}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study4 =  Register.includes(:tags).where(register_tags: {tag_id: 5}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study5 =  Register.includes(:tags).where(register_tags: {tag_id: 6}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study6 =  Register.includes(:tags).where(register_tags: {tag_id: 7}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study7 = Register.includes(:tags).where(register_tags: {tag_id: 8}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)
        @study8 =  Register.includes(:tags).where(register_tags: {tag_id: 9}).references(:tags).sort {|a,b| b.liked_users.count <=> a.liked_users.count}.first(3)


      end 
 
      def show
        @register = Register.find(params[:id])
      end

      def register_params
        params.require(:register).permit(:name, :genre, :image, :sport, :eve, :about, :tag_ids)
      end
end
