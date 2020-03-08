class JobsController < ApplicationController
  before_action :set_shop

  def index
    @jobs = Job.where(shop: @shop.id)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.shop = @shop
    if @job.save
      redirect_to shop_path(@shop)

    else
      render "shop/show"
    end
  end

  def show
    @jobs = Job.find(parmas[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to shop_path(@shop)
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :price, :shop_id)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
