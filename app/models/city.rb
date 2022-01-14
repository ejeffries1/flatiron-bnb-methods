class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  def city_openings(checkin, checkout)
    Listing.available(checkin, checkout)
  end
end

