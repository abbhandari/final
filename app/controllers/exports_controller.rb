class ExportsController < ApplicationController

  def index
    @exports = Export.all
  end

  def show
    @export = Export.find_by(id: params[:id])
  end

  def new
  end

  def create
    @export = Export.new
    @export.materials = params[:materials]
    @export.exports_from = params[:exports_from]

    if @export.save
      redirect_to "/exports/#{ @export.id }"
    else
      render 'new'
    end
  end

  def edit
    @export = Export.find_by(id: params[:id])
  end

  def update
    @export = Export.find_by(id: params[:id])
    @export.materials = params[:materials]
    @export.exports_from = params[:exports_from]

    if @export.save
      redirect_to "/exports/#{ @export.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @export = Export.find_by(id: params[:id])
    @export.destroy


    redirect_to "/exports"
  end
end
