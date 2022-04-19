namespace :recriar do
    desc "Recriar o banco"
    task recriar_db: :environment do
        puts %x(rails db:drop db:create db:migrate)
    end
end