class BlogPostsController < ApplicationController

  def index
    @blog_posts = BlogPost.all
  end

  def show
    @post = BlogPost.find(params[:id])
  end

  def new
    @post = BlogPost.new
  end

  def edit
    @post = BlogPost.find(params[:id])
  end

  def create
    @post = BlogPost.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Blog post was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @post = BlogPost.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to(@post)
    else
      render("edit")
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
      redirect_to(@book)
    else
      render "edit"
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to blog_posts_url }
    end
  end
end
