class ServicesController < ApplicationController
  Before_action :set_shop, :set_job

  def index
    @services = Service.where(params[:shop_id])
  end

  def new
    @service = Service.new(service_params)
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @job = Job.find(params[:job_id])
    @service = Service.new(service_params)
    @service.job = @job
    @service.shop = @shop
    if @service.save
      redirect to shops_path
    else
      render :new
  end

  private

  def service_params
    params.require(:service).permit(:price)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def set_job
    @job = Job.find(params[:job_id])
  end
end
