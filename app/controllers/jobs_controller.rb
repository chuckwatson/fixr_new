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
     respond_to do |format|
          format.html { redirect_to shop_path(@shop) }
          format.js # <-- will render `app/views/reviews/create.js.erb`
        # redirect_to shop_path(@shop)
      end
      else
        respond_to do |format|
          format.html { render :new }
          format.js
      end
    end
  end



  def show
    @jobs = Job.find(params[:id])
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
     if @job.destroy
       respond_to do |format|
          format.html { redirect_to shop_path(@shop) }
          format.js # <-- will render `app/views/reviews/create.js.erb`
        end
        # redirect_to shop_path(@shop)
      else
        respond_to do |format|
          format.html { redirect_shops_path }
          format.js
        end
      end
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :price, :shop_id)
  end

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end
end
