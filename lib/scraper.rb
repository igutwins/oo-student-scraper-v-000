require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index = Nokogiri::HTML(open(index_url))
    students = []
    index.css("div.roster-cards-container").each do |student|
      student.css("div.student-card a").each do |feature|
        student_name = feature.css("h4.student-name").text
        student_location = feature.css("p.student-location").text
        student_url = "#{feature.attr('href')}"
        students << {name: student_name, location: student_location, profile_url: student_url}
      end
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    index = Nokogiri::HTML(open(profile_url))
    profile = {}
    links = index.css(".social-icon-container").children.css("a").map { |l| l.attribute('href').value}
    links.each do |link|
      if link.include?("linkedin")
        profile[:linkedin] = link
      elsif link.include?("github")
        profile[:github] = link
      elsif link.include?("twitter")
        profile[:twitter] = link
      else
        student[:blog] = link
      end

    each do |social|
      twitter =
      linkedin =
      github =
      blog =
    end
    index.css(".vitals-text-container").each do |vitals|
      profile_quote = vitals.css(".profile_quote").text
      bio =


    profile << {}

  end

end
