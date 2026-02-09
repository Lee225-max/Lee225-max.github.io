source "https://rubygems.org"

# 强制使用最新版的 github-pages，避免回退到古老版本
gem "github-pages", group: :jekyll_plugins

# 使用官方 gem 源的 jekyll-scholar
# 我们之前添加的 _plugins/scholar_patch.rb 会修复它的 Ruby 3 兼容性问题
gem "jekyll-scholar"

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-sitemap"
  gem "jekyll-scholar"
end


gem "csv"
gem "webrick"