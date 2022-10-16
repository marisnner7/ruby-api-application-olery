desc 'Seeds the db'

puts 'Adding seeds--------------------'
task :seed do
    require_relative '../config/application'

    puts 'Generating data..'
    ['Company 1', 'Company 2', 'Company 3' ].each do |name|
      DB[:contracts].insert({ name: name, start_date: Time.now })
    end

    ['User 1', 'User 2', 'User 3' ].each do |name|
      DB[:users].insert({ name: name, email: "#{name}@email.com" })
    end

    ['Hotel 1', 'Hotel 2', 'Hotel 3' ].each do |name|
      DB[:hotels].insert({ name: "Hotel #{name}" })
    end

    ['Group 1', 'Group 2', 'Group 3' ].each do |name|
      DB[:groups].insert({ name: "Group #{name}" })
    end
end

puts 'Finished adding seeds------------------'
