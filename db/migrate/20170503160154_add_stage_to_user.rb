class AddStageToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :stage, :integer, default: 0
  end
end
