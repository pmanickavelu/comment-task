class UserCommentsController < ApplicationController
  # before_render :get_comments

  def index
    @user_comment = UserComment.new
    get_comments
  end

  def create
    @user_comment_new = UserComment.new user_comment_params(params)
    @user_comment_new.ip = request.remote_ip
    @user_comment = @user_comment_new.save ? UserComment.new : @user_comment_new
    get_comments
  end
  private
    def get_comments
      ids = UserComment.select("max(id) as id","FLOOR(extract(epoch from created_at))::int/300*300 as ct").group("ct, ip").collect {|c| c.id}
      @user_comments = UserComment.where(id: ids).select(:comment_text,:ip,:created_at).order("created_at desc")
    end

    def user_comment_params(params)
      params.require(:user_comment).permit(:comment_text)
    end
end
