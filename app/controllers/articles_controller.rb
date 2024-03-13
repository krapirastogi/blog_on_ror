class ArticlesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
 

  # skip_before_action :verify_authenticity_token, only: [:krapi]
  # http_basic_authenticate_with name: "Krapi", password: "abcd1234", only: :destroy
  

  def index
    @articles = Article.all
     
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @articles  } 
    # end
  end

  def show
    @article=Article.find_by_id(params[:id])
    unless @article.present?
      flash[:notice]="Article id not found"
      redirect_to articles_path
    end
  end

  def new
    @article = Article.new
    
  end

  def create
    # puts(current_user.id)
    # print(article_params)
    # gets.chomp
    @article = Article.new(article_params)
    @article.user_id = current_user.id
   
    if @article.save
      puts (@article)
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end


  def edit
  @article=Article.find(params[:id])
  end

  def update 
    @article= Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
  end
  
 
  private
  def article_params
    params.require(:article).permit(:title, :body ,:user_id,:status)
  end
end
