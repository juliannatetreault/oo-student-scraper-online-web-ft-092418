require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    #binding.pry
    doc.css("div.student-card").collect do |student|
    student_hash = {
    name: student.css("h4.student-name").text,
    location: student.css("p.student-location").text,
    profile_url: student.css("a").attr("href").value
    }
  end
end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    #binding.pry
    profile_hash = {
      
    }
    #doc.css()
  end

end
