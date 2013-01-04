class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.references :project
      t.datetime :startedAt
      t.datetime :finishedAt
      t.integer :expect
      t.integer :actual
      t.text :notes

      t.timestamps
    end
    add_index :plans, :project_id
  end
end
