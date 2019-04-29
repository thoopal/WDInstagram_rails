class InstasController < ApplicationController
	def index
		@instas = Insta.all
	end

	def show
		@insta = Insta.find(params[:id])
	end

	def new
	end

	def edit
		@insta = Insta.find(params[:id])
	end

	def create
		render plain: params[:insta].inspect
		@insta = Insta.new(insta_params)
		@insta.save
		redirect_to @insta
	end

	def update
		@insta = Insta.find(params[:id])
		@insta.update(insta_params)
  		redirect_to @insta
	end

	def destroy
		def update
		@insta = Insta.find(params[:id])
		@insta.destroy
  		redirect_to @insta

	end

end

private
  def insta_params
    params.require(:insta).permit(:title, :text, :name, :url)
  end
 end