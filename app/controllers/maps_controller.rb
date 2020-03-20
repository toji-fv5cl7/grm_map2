  class MapsController < ApplicationController

  def new
    @map = Map.new # フォーム用の空のインスタンスを生成する。
  end

  def create
    @map = Map.new(map_params) # ストロングパラメータを引数に
    @map.apsave # saveをしてデータベースに保存する。
    redirect_to @map # showページにリダイレクト
  end

  private

  def map_params # ストロングパラメータを定義する
    params.require(:map).permit(:caption)
    params.require(:map).permit(:caption, :image)
  end
  end