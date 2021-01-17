Rails.application.config.generators do |g|
    g.javascripts false # CoffeeScriptを作成しない
    g.helper false      # ヘルパーを作成しない
    g.assets false      # CSS, JavaScriptファイルを生成しない
    g.skip_routes true  # config/routes.rbを変更しない
end