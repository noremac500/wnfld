# The pages controller contains all of the code inside /pages
class PagesController < ApplicationController
  
  #back end code for pages/index
  def index
  end
#back end code for pages/home
  def home
      @posts = Post.all
  end
#back end code for pages/profile
  def profile
    # get the username from the URL as :id.
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    
    else
    #Redirect to 404 (root for now)
      redirect_to root_path, :notice=> "User not found!"
  end
   
   @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
   
   @newPost = Post.new
   
   
  
  end
  
#back end code for pages/explore
  def explore
      @posts = Post.all
  end
end
