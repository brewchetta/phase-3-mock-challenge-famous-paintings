class Museum < ActiveRecord::Base
  has_many :paintings, dependent: :destroy
  has_many :artists, through: :paintings

  def combined_value
    self.paintings.sum { |p| p.price_in_us_dollars }
  end

  def average_value
    self.paintings.length > 0 ?
      (self.combined_value / self.paintings.count) :
      0
  end

  def self.fanciest
    Museum.all.max_by {|m| m.average_value}
  end

  def exhibit_artist(artist)
    artist.paintings.each do |p|
      p.update(museum: self)
    end
  end

end
