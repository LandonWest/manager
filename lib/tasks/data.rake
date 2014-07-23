namespace :data do

  desc 'create a report of user data'
  task csv: :environment do
    user = User.all
    limit = ENV['LIMIT'] || user.count

    CSV.open("tmp/csv/users-#{Time.now.strftime("%Y-%b-%d")}.csv", "wb") do |csv|
      user.first(limit).each do |user|
        csv << [user.name, user.email, user.phone, user.address]
      end
    end
  end

end
