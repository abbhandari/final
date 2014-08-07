class AddStuffa < ActiveRecord::Migration
  def change
    add_column :countries, :literacy_rate, :string
    add_column :countries, :military_budget, :string
    add_column :countries, :minimum_wage, :string
    add_column :countries, :average_age, :string
    add_column :countries, :average_income, :string
    add_column :countries, :government_type, :string
    add_column :countries, :head_of_state, :string
    add_column :countries, :debt, :string
  end
end
