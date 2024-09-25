class UsersController > ApplicationController 

  def create
      user = User.new(user_params)
    if user.save
      redirect_to users_path
    else 
      flash[:notice] = "User not created: Required information missing or incorreect"
      redirect_to '/admin/merchants/new'
    end
    
  end
  
  def show
  
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
end