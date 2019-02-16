require 'nokogiri'
require 'open-uri'

class CrawlerController < ApplicationController
  
  def index
    url = "https://comic.naver.com/webtoon/weekdayList.nhn?week=sat"
    doc = Nokogiri::HTML(open(url))
    webtoon = doc.css('ul.img_list dt a')
    @webtoon_text = webtoon.map{|web| web.text}
  end
end
