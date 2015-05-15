class CreateBandTable < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)
      t.column(:venue_id, :integer)

      t.timestamps()
    end
  end
end
