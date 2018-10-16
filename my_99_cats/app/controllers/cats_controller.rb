class CatsController < ApplicationController
CAT_COLORS = ['Black', 'Green', 'White', 'Orange', 'Brown']
  def index
    @cats = Cat.all
    render :index
  end


  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    @colors = CAT_COLORS
    @date = DateTime.now
    render :new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cat_url(@cat)
    else
      flash[:errors] = @cat.errors.full_messages
      redirect_to new_cat_url
    end
  end


  def edit
    @cat = Cat.find(params[:id])
    @colors = CAT_COLORS
    @date = DateTime.now
    render :edit
  end


  def update
    cat = Cat.find(params[:id])
    if cat.update(cat_params)
      redirect_to cat_url(cat)
    else
      flash[:errors] = cat.errors.full_messages
      redirect_to edit_cat_url(cat)
    end
  end


  def destroy
    cat = Cat.find(params[:id])
    cat.destroy
    redirect_to cats_url
  end

  private

def cat_params
  params.require(:cat).permit(:name, :sex, :color, :birth_date, :text)
end

end
