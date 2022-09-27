

class SignupsController < ApplicationController

  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)

    if @signup.save
      redirect_to "pages/thanks"

    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def signup_params
      params.require(:signup).permit(:firstname, :email)
  end
end
