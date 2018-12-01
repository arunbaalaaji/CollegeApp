class AdminController < ApplicationController
  http_basic_authenticate_with name:"root",password:"admin",except:["index","studdetail","addquestion"]
  def index
    if session[:admin] == nil
      render "/college/home"
    end
  end

  def studdetail
    if session[:admin] == nil
      render "/college/home"
    end 
    #@stulist=Student.all
    @stulist=Student.all.paginate(page:params[:page],per_page:1)
  end

  def studdelete
    if session[:admin] == nil
      render "/college/home"
    end 
  end

  def studdeleteaction
    if session[:admin] == nil
      render "/college/home"
    end 
    @s=Student.find_by_admnno(params["admnno"])
    @m=Mark.find_by_admnno(params["admnno"])
    if(@s.delete and @m.delete)
      @msg="Deleion Successful"
    else
      @msg="Deletion failed"
    end
  end

  def addquestion
    if session[:admin] == nil
      render "/college/home"
    end 
  end

  def updatemark
    if session[:admin] == nil
      render "/college/home"
    end 
  end

  def updatemarkaction
    if session[:admin] == nil
      render "/college/home"
    end 
    @m=Mark.find_by_admnno(params["admnno"])
    @m.c1=params["c1"]
    @m.c2=params["c2"]
    @m.c3=params["c3"]
    @m.c4=params["c4"]
    @m.c5=params["c5"]
    if(@m.save)
      @msg="Updation Successful"
    else
      @msg="Updation  failed"
    end
  end
end
