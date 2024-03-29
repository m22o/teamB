class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      # エラーメッセージを作成する
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
