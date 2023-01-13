require "json"
require "open-uri"
require "material_icons"
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      begin
         @assets = MarketStackApiManager.new(params[:query]).get_data
      rescue => e
          @error = "not valid ticker"
      end
      if @error == "not valid ticker"
        begin
          @assets = CoinMarketCapApiManager.new(params[:query]).get_data
        rescue => e
          @error = "second API invalid"
        end
      end
    end
  end
end

  def popup
  end

  def popform
  end

  def profile
  end
