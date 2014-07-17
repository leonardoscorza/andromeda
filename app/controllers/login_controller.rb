class LoginController < ApplicationController


  def index
    if session[:validation] == 'changethispart'
      redirect_to console_path
    end

  end

  def create

    @user = params[:user]
    @pass = params[:password]


    if @user.nil? or @pass.nil?
      flash[:danger] = 'Login ou senha vazio, tente novamente champs'
      redirect_to login_index_path
    else
      if @user == 'root' and @pass == 'robot'
        session[:validation] = 'changethispart'
        redirect_to console_path
      else
        flash[:danger] = 'Login ou senha incorreto, tente novamente champs'
        redirect_to login_index_path
      end

    end

  end

  def logout
    session[:validation] = ''
    p session[:validation]
    redirect_to login_index_path
  end

end
