#bookinfo class
class Bookinfo

  attr_accessor :title, :authors, :description
  def initialize(title, authors, description)
    @title = title
    @authors = authors
    @description = description
  end

  def to_s
  end

end

