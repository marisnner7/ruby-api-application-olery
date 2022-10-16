Sequel.migration do
  change do
    create_table(:groups_subscription) do
      foreign_key :contracts_id
      foreign_key :groups_id
      primary_key [:contracts_id, :groups_id]
      index [:contracts_id, :groups_id]
    end
  end
end