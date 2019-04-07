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
    # トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
    @posts = Post.all
  end
  # メソッドの前にprivateと書くことにより、アクションとしては認識されない（メソッドの名前はモデル名_paramsとすることが多いです）
  private

  def post_params

    params.require(:post).permit(:title, :body)
  end
end
