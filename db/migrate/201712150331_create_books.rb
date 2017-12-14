class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.referrences :shelf, null: false #t.integer :shelf_id, null: false
      t.string   :title
      t.string   :number
      t.integer  :price

      t.timestamps null: fasle
  end
end

