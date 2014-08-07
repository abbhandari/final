class ImportsController < ApplicationController

  def index
    @imports = Import.all
  end

  def show
    @import = Import.find_by(id: params[:id])
  end

  def new
  end

  def create
    @import = Import.new
    @import.materials = params[:materials]
    @import.imports_from = params[:imports_from]

    if @import.save
      redirect_to "/imports/#{ @import.id }"
    else
      render 'new'
    end
  end

  def edit
    @import = Import.find_by(id: params[:id])
  end

  def update
    @import = Import.find_by(id: params[:id])
    @import.materials = params[:materials]
    @import.imports_from = params[:imports_from]

    if @import.save
      redirect_to "/imports/#{ @import.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @import = Import.find_by(id: params[:id])
    @import.destroy


    redirect_to "/imports"
  end
end
