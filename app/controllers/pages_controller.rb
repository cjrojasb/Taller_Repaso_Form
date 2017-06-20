class PagesController < ApplicationController
  def pagina_x
    @users = User.all
    if params[:query].present?
      @user = User.where("name like ? OR email like ? OR age like ?",
      "%#{params[:query]}%", "%#{params[:query]}%", "%#{params[:query]}%")
    else
      @users = User.all
    end
  end

  def new_user
    if params[:name].present? && params[:email].present? && params[:age].present?
      @user = User.new(name: params[:name], email: params[:email], age: params[:age])
      @user.save
      redirect_to pages_pagina_x_path, notice: "Usuario creado"
    else
      redirect_to pages_pagina_x_path, alert: "Ingrese todos los campos solicitados"
    end
  end
end
