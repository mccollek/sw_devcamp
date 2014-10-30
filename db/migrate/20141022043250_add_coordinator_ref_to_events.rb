class AddCoordinatorRefToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :coordinator, index: true
  end
end
