require 'nokogiri'
require 'open-uri'
class StartScrap
  def initialize(url = "https://coinmarketcap.com/all/views/all/")
    @url = url
  end
  def coinmarketcap
    page = Nokogiri::HTML(open(@url))
    nom = []
    prix = []
    page.xpath('//a').each do |v|
      if v.to_s.include?('class="currency-name-container link-secondary"')
        nom << v.text.downcase
      elsif v.to_s.include?('class="price"')
        prix << v.text
      end
    end
    my_hash = Hash[nom.zip(prix)]
    return my_hash
  end
  def save
    h = coinmarketcap
    h.each do |k,v|
      f = Crypto.new(crypto_name: k.to_s, cours: v.to_s)
      f.save
    end
  end
  def perform
    save
  end
end