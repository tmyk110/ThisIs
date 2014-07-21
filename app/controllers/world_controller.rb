class WorldController < ApplicationController
  def index
    @groups = Array.new
    for region in Region.all do
      group = Array.new
      group.push(region.name)
      countryNames = Country.where(:region_id => region.id).pluck(:name)
      for name in countryNames do
        group.push(name)
      end
      @groups.push(group)
    end
  end
end
