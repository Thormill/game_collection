class HomeController < ApplicationController
  def index
  end

  def notice_show
    redirect_to root_path, notice: "tadada"
  end
end
