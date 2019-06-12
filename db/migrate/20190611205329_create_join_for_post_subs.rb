class CreateJoinForPostSubs < ActiveRecord::Migration[5.2]
  def change
    create_table :join_for_post_subs do |t|
      t.integer :sub_id, null: false
      t.integer :post_id, null: false
      t.timestamps
    end
    add_index :join_for_post_subs, :sub_id
    add_index :join_for_post_subs, :post_id
  end
end
