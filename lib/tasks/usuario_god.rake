namespace :usuario_god do
    desc "Usuario master"
    task new_user: :environment do
        User.create!(
            email: "god@god.com",
            password: 123456,
          
        )
    end

end