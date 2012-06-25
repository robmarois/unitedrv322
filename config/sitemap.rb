# file used for Sitemap only

SitemapGenerator::Sitemap.default_host = "http://www.unitedrvs.com"
SitemapGenerator::Sitemap.sitemaps_host = "http://s3.amazonaws.com/unitedrv/"
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.adapter = SitemapGenerator::WaveAdapter.new
SitemapGenerator::Sitemap.create do
  
  Camper.find_each do |camper|
    add camper_path(camper), lastmod: camper.updated_at
  end

  add '/about', changefreq: 'monthly'
  add '/service', changefreq: 'monthly'
  add '/parts', changefreq: 'monthly'
  add '/news', changefreq: 'monthly'
  add '/contact', changefreq: 'monthly'  
end