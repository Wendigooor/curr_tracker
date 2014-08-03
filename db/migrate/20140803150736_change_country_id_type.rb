class ChangeCountryIdType < ActiveRecord::Migration
  def up
  	change_column :user_countries, :country_id,  :string
  end

  def down
  end
end
