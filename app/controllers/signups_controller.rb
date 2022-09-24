class SignupsController < ApplicationController
  
  def index
    @signups = Signup.all
  end

  def show
  end

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(firstname: "...", email: "...")

    if @signup.save
      redirect_to "#"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def signup_params
      params.require(:signup).permit(:firstname, :email)
    end

end
