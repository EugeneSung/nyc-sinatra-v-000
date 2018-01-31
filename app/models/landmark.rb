class Landmark <ActiveRecord::Base
  belongs_to :figure
  def slug
  #Taylor Swift -> taylor-swift
    name.downcase.gsub(" ", "-") unless name.nil?
  end
  def self.find_by_slug(slug)
    Landmark.all.find do |landmark|
      landmark.slug == slug
    end
  end
end
