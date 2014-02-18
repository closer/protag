require "sprockets-less"

activate :automatic_image_sizes

activate :livereload

activate :blog do |blog|
  blog.prefix ="blog"
end

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
  activate :minify_css

  activate :minify_javascript

  activate :asset_hash

  activate :relative_assets

  activate :google_analytics do |ga|
    ga.tracking_id = "UA-33978950-3"
  end
end
