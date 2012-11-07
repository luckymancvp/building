class CreateNotifyCenters < ActiveRecord::Migration
  def change
    create_table :notify_centers do |t|
      t.string :title
      t.string :content
      t.string :conditions
      t.datetime :time
      t.boolean :checked

      t.timestamps
    end
  end
end
