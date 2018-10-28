require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'https://http://www.francine-lindagba-avocat.com/'
SitemapGenerator::Sitemap.create do
  add '/'
  add '/domaines-expertise'
  add '/articles', :changefreq => 'weekly'
  add '/contacts'
end
SitemapGenerator::Sitemap.ping_search_engines # N
