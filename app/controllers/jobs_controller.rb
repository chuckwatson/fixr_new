class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def index
    @jobs = Job.where(params[:service_id])
  end

  def create
    @service = Service.find(params[:service_id])
    @job = Job.new(job_params)
    @job.service = @service
    if @job.save
      redirect_to shop_path(@shop)
    else
      render "shop/show"
    end
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
    params.require(:job).permit(:name, :description, :price, :service_id)
  end
end
