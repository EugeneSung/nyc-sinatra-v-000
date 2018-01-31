class Title < ActiveRecord::Base
  has_many :figure_titles
  has_many :figures, through: :figure_titles



  def slug
  #Taylor Swift -> taylor-swift
    name.downcase.gsub(" ", "-") unless name.nil?
  end
  def self.find_by_slug(slug)
    Title.all.find do |title|
      title.slug == slug
    end
  end
end
