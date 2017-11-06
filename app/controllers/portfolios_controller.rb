class PortfoliosController < ApplicationController

def index

	@portfolio_items = Portfolio.all
end

def new
  @page_title = "Josh Beere | New Portfolio Item"
	@portfolio_item = Portfolio.new
  3.times {@portfolio_item.technologies.build}
end



def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Potfolio item was successfully created.' } 
      else
        format.html { render :new }
      end
    end
 end

 def edit
  @page_title = "Josh Beere | Edit Portfolio Item"
    @portfolio_item = Portfolio.find(params[:id])
 end

 def update
  @portfolio_item = Portfolio.find(params[:id])
  respond_to do |format|
    if @portfolio_item.update(portfolio_params)
      format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully updated.'}
    else
      format.html {render :edit}
    end
  end
end

def show
  @portfolio_item = Portfolio.find(params[:id])
  @page_title = "Josh Beere | #{@portfolio_item.title}"
end

def destroy
@portfolio_item = Portfolio.find(params[:id])

@portfolio_item.destroy


    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item was successfully removed.' }
    end
end

private

def portfolio_params
   params.require(:portfolio).permit(:title,
                                     :body,
                                    :subtitle,
                                     technologies_attributes: [:name])
end

end


