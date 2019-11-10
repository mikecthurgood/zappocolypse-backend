class UsersController < ApplicationController
  
  def signin
    user = User.find_by(username: params[:username])
    

    if user && user.authenticate(params[:password])
      render json: {username: user.username, userSkills: user.skills, userActivities: user.activities, userSkillZaps: user.skill_zaps, token: issue_token({id: user.id})}
    else
      render json: {error: 'Username or Password is invalid.'}, status: 401
    end

  end

  def validate
    user = get_current_user
    

    if user
      render json: {username: user.username, userSkills: user.skills, userActivities: user.activities, userSkillZaps: user.skill_zaps, token: issue_token({id: user.id})}
    else
      render json: {error: 'Unable to validate user.'}, status: 401
    end
  end

  def create
    user = User.new(user_params)

    if user.save
      render json: {username: user.username, userSkills: user.skills, userActivities: user.activities, userSkillZaps: user.skill_zaps, token: issue_token({id: user.id})}
    else 
      render json: {error: 'Unable to create user.'}, status: 500
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :living_in, :age, :height, :occupation)
  end
  
end
