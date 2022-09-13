class CreateEngagements < ActiveRecord::Migration[7.0]
  def change
    create_table :engagements do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end