namespace :usuario_god do
    desc "Usuario master"
    task new_user: :environment do
        User.create!(
            email: "god@god.com",
            tipo_user: 1,
            password: 123456,
            ativo: true
        )
    end

end