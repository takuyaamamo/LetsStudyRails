class PostsController < ApplicationController
  def new
    # 空のモデルをビューへ渡す
    @post = Post.new
  end

  def create
    # ストロングパラメータを使用
    post = Post.new(post_params)
    # DBへ保存
    post.save
    # 詳細画面へリダイレクト
    redirect_to post_path(post.id)
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  # メソッドの前にprivateと書くことにより、アクションとしては認識されない（メソッドの名前はモデル名_paramsとすることが多いです）
  private

  def post_params

    params.require(:post).permit(:title, :body, :image)
  end
end
