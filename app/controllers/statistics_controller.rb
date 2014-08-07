class StatisticsController < ApplicationController

  def index
    @statistics = Statistic.all
  end

  def show
    @statistic = Statistic.find_by(id: params[:id])
  end

  def new
  end

  def create
    @statistic = Statistic.new
    @statistic.data = params[:data]

    if @statistic.save
      redirect_to "/statistics/#{ @statistic.id }"
    else
      render 'new'
    end
  end

  def edit
    @statistic = Statistic.find_by(id: params[:id])
  end

  def update
    @statistic = Statistic.find_by(id: params[:id])
    @statistic.data = params[:data]

    if @statistic.save
      redirect_to "/statistics/#{ @statistic.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @statistic = Statistic.find_by(id: params[:id])
    @statistic.destroy


    redirect_to "/statistics"
  end
end
