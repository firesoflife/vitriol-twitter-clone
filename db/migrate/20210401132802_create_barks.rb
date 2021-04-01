class CreateBarks < ActiveRecord::Migration[6.1]
  def change
    create_table :barks do |t|
      t.text :bark

      t.timestamps
    end
  end
end
