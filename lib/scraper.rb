require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index = Nokogiri::HTML(File.read(index_url))

    students = {}

    index.css("div.roster-cards-container").each do |student|

  end

  def self.scrape_profile_page(profile_url)

  end

end
