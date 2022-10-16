Sequel.migration do
  change do
    create_table(:hotels_groups) do
      foreign_key :hotels_id
      foreign_key :groups_id
      primary_key [:hotels_id, :groups_id]
      index [:hotels_id, :groups_id]
    end
  end
end