class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :name, null:false

      t.timestamps
    end
  end
end
