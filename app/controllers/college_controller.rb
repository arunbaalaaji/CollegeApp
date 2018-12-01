class CollegeController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def home
    session[:user] = nil
    session[:admin] = nil
  end

  def signup
  end

  def signin 
  end

  def signinaction
    adm=params["adm"]
    pas=params["pas"]
    @user=Student.find_by_admnno(adm)
    if @user
      if params["pas"]==@user.password
        session[:user] = @user.admnno
        render "/student/index"
      else
        @msg="Incorrect Username or password"
        render "signinaction"
      end
    else
      @msg="Incorrect Username or password"
      render "signinaction"
    end
  end

  def signupaction
    @s=Student.new
    @m=Mark.new
    #@s.id=params[""]
    @m.admnno=params["admnno"]
    @s.admnno=params["admnno"]
    @s.gender=params["gender"]
    @s.rollno=params["rollno"]
    @s.name=params["name"]
    @s.dept=params["dept"]
    @s.password=params["password"]
    if @s.save and @m.save
      @msg="Insertion Successful"
    else
      @msg="Insertion failed"
    end
  end

  def admin
  end

  def adminaction
    if params["usn"]=='root' and params["pas"]=="admin"
      session[:admin] = "admin"
      render "/admin/index"
    else
      @msg="Incorrect Username or password"
      render "adminaction"
    end
  end
end
