class StudentController < ApplicationController
  def index
    if session[:user] == nil
      render "/college/home"
    else   
      @id=session[:user]
      @user=Student.find_by_admnno(@id)
    end
  end

  def profile
    if session[:user] == nil
      render "/college/home"
    end   
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
  end

  def chgpass
    if session[:user] == nil
      render "/college/home"
    end   
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
  end

  def chgpassaction
    if session[:user] == nil
      render "/college/home"
    end   
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
    @user.password=params["npwd"]
    if @user.save
      @msg="Updation Successful"
    else
      @msg="Updation failed"
    end
  end

  def feedback
    if session[:user] == nil
      render "/college/home"
    end 
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
  end

  def feedbackaction
    if session[:user] == nil
      render "/college/home"
    end 
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
  end

  def questbank
    if session[:user] == nil
      render "/college/home"
    end 
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
  end

  def mark
    if session[:user] == nil
      render "/college/home"
    end 
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
    @mark=Mark.find_by_admnno(@id)
  end

  def updateprofileaction
    if session[:user] == nil
      render "/college/home"
    end 
    @id=session[:user]
    @user=Student.find_by_admnno(@id)
    @user.rollno=params["rollno"]
    @user.name=params["name"]
    @user.dept=params["dept"]
    if @user.save
      @msg="Updation Successful"
    else
      @msg="Updation failed"
    end
  end

  def updateprofile
    if session[:user] == nil
      render "/college/home"
    end
  end

end
