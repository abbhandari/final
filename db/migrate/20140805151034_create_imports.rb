class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.string :materials
      t.string :imports_from

      t.timestamps
    end
  end
end
