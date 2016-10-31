class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def index
    @job = Job.all
  end
  def show
    @job = Job.find_by id: params[:id]
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "Welcome to Sample App!"
      redirect_to job_path(@job)
    else 
      render 'new'
    end
  end

  def job_params
    params.require(:job).permit :name, :description
  end
end
