class UpdateSourcesTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :sources, :created
    remove_column :sources, :updated
  end
end
