class Figure <ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles

  def slug
  #Taylor Swift -> taylor-swift
    name.downcase.gsub(" ", "-") unless name.nil?
  end

  def self.find_by_slug(slug)
    Figure.all.find do |figure|
      figure.slug == slug
    end
  end
end
