class ProductsController < ApplicationController
  
before_action :only => [:new, :edit, :update, :destroy] do
  redirect_to new_user_session_path unless current_user && current_user.admin
end

def index
  @products = Product.all
  render :index
end

def new
  @product = Product.new
  render :new
end

def create
  @product = Product.new(product_params)
  if @product.save
    flash[:notice] = "Product successfully added!"
    redirect_to products_path
  else
    render :new
  end
end

def edit
  @product = Product.find(params[:id])
  render :edit
end

def show
  @product = Product.find(params[:id])
  render :show
end

def update
  @product= Product.find(params[:id])
  if @product.update(product_params)
    flash[:notice] = "Product successfully updated!"
    redirect_to products_path
  else
    render :edit
  end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  flash[:notice] = "Product successfully deleted!"
  redirect_to products_path
end

private
def product_params
  params.require(:product).permit(:name, :cost, :country_of_origin)
end
end



