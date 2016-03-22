class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.datetime :date
      t.string :place
      t.string :track
      t.string :details

      t.timestamps null: false
    end
  end
end
