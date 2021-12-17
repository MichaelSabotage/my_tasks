class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.belongs_to :project
      t.string :text
      t.string :isCompleted, :default => "false"
      t.timestamps
    end
  end
end
