unless Rails.env.production?
  # 10件のデータを用意する
  MAP_MAX = 10

  # Proc.newでその後の配列をオブジェクトとしてpost_attrsに代入
  map_attrs = Proc.new do
    # Array.newでその後の内容を配列としてオブジェクト化する準備
    Array.new(MAP_MAX) do |idx|
      { id: idx + 1,
        # Fakerを使って文言を用意
        photo1: Faker::Lorem.paragraph
      }
    end
  end

  # Proc.newでオブジェクト化したデータ(*post_attrs)を.callで呼び出して保存
  # seed_onceメソッドは上書きを行わない。なおかつバリデーションは無効化して登録できる。
  Maps.seed_once(:id, *maps_attrs.call)

end