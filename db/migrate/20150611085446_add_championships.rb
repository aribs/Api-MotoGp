class AddChampionships < ActiveRecord::Migration
  def change
  	add_column :legends, :n_championships, :integer
  end
end
