class Painting < ActiveRecord::Base
  belongs_to :artist
  belongs_to :museum

  def description
    "#{self.title} was painted by #{self.artist.full_name} which currently resides in the #{self.museum.name}. It is currently priced at $#{self.price_in_us_dollars}."
  end

end
