class AddRegionIdToCountries < ActiveRecord::Migration
  def change
    add_reference :countries, :region, index: true
  end
end
