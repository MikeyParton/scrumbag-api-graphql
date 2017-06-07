class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.integer :list_id
      t.timestamps
    end

    add_index :cards, :list_id
  end
end
