class TipsController < ApplicationController

  def index

  end

  def show
    @tip = Tip.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
