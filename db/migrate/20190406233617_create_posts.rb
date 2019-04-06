class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      # create_tableという処理の do ~ end 内に書き込むことによってカラムを定義できます。
      # t.データ型名 :カラム名
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end
