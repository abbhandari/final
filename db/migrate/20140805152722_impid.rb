class Impid < ActiveRecord::Migration
  def change
    add_column :imports, :country_id, :integer
    add_column :exports, :country_id, :integer
  end
end
