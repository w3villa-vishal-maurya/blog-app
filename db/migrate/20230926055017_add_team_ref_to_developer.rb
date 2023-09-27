class AddTeamRefToDeveloper < ActiveRecord::Migration[6.1]
  def change
    add_reference :developers, :team, foreign_key: true
  end
end
