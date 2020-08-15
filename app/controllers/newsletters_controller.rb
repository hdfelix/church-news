class NewslettersController < ApplicationController
  def index
    @newsletters = Newsletter.all
  end

  def show
    @newsletter = Newsletter.find(params[:id])
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)

    if @newsletter.save
      redirect_to newsletters_path
    else
      render 'new'
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:title, :address, :date)
  end
end
