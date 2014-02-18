require "sprockets-less"

activate :automatic_image_sizes

activate :livereload

activate :blog do |blog|
  blog.prefix = "blog"
end

set :markdown, :tables => true, :autolink => true, :gh_blockcode => true, :fenced_code_blocks => true, :with_toc_data => true
set :markdown_engine, :redcarpet

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :bower_dir, '../vendor/bower'

set :relative_links, true

configure :development do
  activate :google_analytics do |ga|
    ga.tracking_id = false
  end
end


configure :build do
  activate :cache_buster

  activate :minify_css
  activate :minify_javascript
  activate :gzip

  activate :asset_hash

  activate :automatic_alt_tags

  activate :relative_assets

  activate :google_analytics do |ga|
    ga.tracking_id = "UA-33978950-3"
  end
end
