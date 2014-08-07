class CreateExports < ActiveRecord::Migration
  def change
    create_table :exports do |t|
      t.string :materials
      t.string :exports_from

      t.timestamps
    end
  end
end
