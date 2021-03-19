class ReviewsController < ApplicationController
  
def new
  @product = Product.find(params[:product_id])
  @review = @product.reviews.new
  render :new
end


def create
  @product = Product.find(params[:product_id])
  @review = @product.reviews.new(review_params)
  if @review.save
    redirect_to product_path(@product)
  else
    render :new
  end
end

def show
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  render :show
end

def edit
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  render :edit
end

def update
  @review = Review.find(params[:id])
  if @review.update(review_params)
    redirect_to product_path(@review.album)
  else
    @product = Product.find(params[:product_id])
    render :edit
  end
end

def destroy
  @review = Reivew.find(params[:id])
  @review.destroy
  redirect_to review_path(@review.product)
end
# Other controller actions go here.

private
  def review_params
    params.require(:review).permit(:author, :content_body, :rating)
end
end