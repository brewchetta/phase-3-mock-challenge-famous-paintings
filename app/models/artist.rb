class Artist < ActiveRecord::Base
  has_many :paintings, dependent: :destroy
  has_many :museums, through: :paintings

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.sort_by_year
    self.all.sort_by { |a| a.birthyear }
  end

  def add_painting(museum, title, price_in_us_dollars)
    self.paintings.create(museum: museum, title: title, price_in_us_dollars: price_in_us_dollars)
  end

end
