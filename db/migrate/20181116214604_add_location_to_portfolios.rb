class AddLocationToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :location, :text
  end
end
