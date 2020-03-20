  class MapsController < ApplicationController
  def index
    @maps = Map.all
  end

  def new
    @map = Map.new # フォーム用の空のインスタンスを生成する。
  end

  def create
    @map = Map.new(map_params) # ストロングパラメータを引数に
    @map.apsave # saveをしてデータベースに保存する。
    redirect_to @map, notice: '投稿を保存しました' # showページにリダイレクト
  end
  def show
    @maps = Map.find(params[:id])
  end


  private

  def map_params # ストロングパラメータを定義する
    params.require(:map).permit(:caption)
    params.require(:map).permit(:caption, :image)
  end
  end