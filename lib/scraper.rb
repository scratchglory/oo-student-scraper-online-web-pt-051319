require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  #index_url = "./fixtures/student-site/index.html"
  url = open(index_url)
  doc = Nokogiri.HTML(url)

  def self.scrape_index_page(index_url)
    # binding.pry
    :name => index_url.css(".student-name").text
    :location => index_url.css(".studen-location").text
    :profile_url => index_url.css(".view-profile-text").text
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

