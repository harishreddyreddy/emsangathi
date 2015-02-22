require 'flickr_fu'
class HomeController < ApplicationController
  def index
    flickr = Flickr.new(:key => "#{FlikrConfig.config[:flikr_key]}", :secret => "#{FlikrConfig.config[:flikr_secret]}")
    @photos = flickr.photos.search(:tags => 'metrorail-hyderabad, hyderabad-pub,  hussain sagar, banjara hills, dilshuknagar, malakpet',
                                   :per_page => 180, :sort => 'date-taken-desc')
  end
end
