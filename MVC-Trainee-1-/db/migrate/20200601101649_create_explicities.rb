class CreateExplicities < ActiveRecord::Migration[5.2]
  def change
    create_table :explicities do |t|
      t.string :explicity

      t.timestamps
    end
  end
end
