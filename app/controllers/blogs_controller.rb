class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    if @blog = Blog.create!(blog_params)
      # flash[:notice]="投稿を作成しました"
      redirect_to @blog
    else
      render('blogs/new')
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    @blog.update_attributes(title: params[:blog][:title] ,content: params[:blog][:content])
    @blog.save
    redirect_to @blog
  end


  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
