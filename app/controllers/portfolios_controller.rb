class PortfoliosController < ApplicationController
	def index
		@portfolio = Portfolio.all
	end

	def show
	end

	def new
		@Portfolio = Portfolio.new
	end

	def edit
	end

	def create
		@Portfolio = Portfolio.new(portfolio_params)
		respond_to do |format|
			if @portfolio.save
				format.html { redirect_to @portfolio, nitice: 'Portfolio was successfully created'}
			else
				format.html {render :new}
			end
		end
	end

	def update 
	end

	def destroy
	end

	private

	def set_porfolio
		@portfolio = Portfolio.find(params[:id])
	end

	def portfolio_params
		params.require(:portfolio).permit(:title, :body, :main_image, :thumb_image)
	end

end
