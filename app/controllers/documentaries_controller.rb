class DocumentariesController < ApplicationController
  
  def index
    @documentary = Documentary.all
  end

  def create
    @documentary = Documentary.new(documentary_params)
    if @documentary.save
      redirect_to documentaries_path
    else
      render :new
    end
    end

  def new
    @documentary = Documentary.new
  end


  def documentary_params
    params.require(:documentary).permit(:name,:synopsis, :director)
  end

end