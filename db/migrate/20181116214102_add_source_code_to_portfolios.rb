class AddSourceCodeToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :source_code, :text
  end
end
