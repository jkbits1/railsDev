class DriversController < ApplicationController

  def show
    @driver = Driver.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params[:driver].inspect
    # @driver = Driver.new(params[:driver])
    @driver = Driver.new(driver_params)

    @driver.save
    redirect_to @driver
  end

  private
    def driver_params
      params.require(:driver).permit(:title, :text)
    end
end
