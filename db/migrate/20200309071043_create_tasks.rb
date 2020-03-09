class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string      :name, null: false, index: true
      t.text        :content
      t.string      :image
      t.integer     :importance, null: false
      t.integer     :urgency, null: false
      t.integer     :status, null: false
      t.timestamps
    end
  end
end
