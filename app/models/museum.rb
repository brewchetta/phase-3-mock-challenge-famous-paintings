class Museum < ActiveRecord::Base
  has_many :paintings
  has_many :artists, through: :paintings

  def combined_value
      # self.paintings.reduce(0) do |sum, painting|
      #   sum + painting.price_in_us_dollars
      # end
      paintings.sum(:price_in_us_dollars)
  end

  def average_value
    return 0 if self.paintings.length == 0
    self.combined_value / self.paintings.length
  end

  def self.fanciest
    # Museum.all.sort_by {|m| m.average_value}.last
    Museum.all.max_by {|m| m.average_value}
  end

  def exhibit_artist(artist)
    # artist.paintings.each { |painting| painting.update(museum: self) }
    artist.paintings.update(museum_id: self.id)
  end

end
