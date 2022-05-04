class Estoque < ApplicationRecord

    belongs_to :produto
    paginates_per 5
    validates :qtdentrada, presence: true
    validates :qtdsaida, presence: true
    validates :dataentrada, presence: true
    validates :datasaida, presence: true
    validates :valorentrada, presence: true
    validates :valorsaida, presence: true
    validates :produto, presence:true

    def self.to_csv(fields = column_names, options = {})
        CSV.generate(options) do |csv|
        csv << fields
            all.each do |stock|
                csv << stock.attributes.values_at(*fields)
            end
        end
    end

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
        stock_hash = row.to_hash
        stock = find_or_create_by!(name: stock_hash['name'], category: stock_hash['category'])
        stock.update_attributes(stock_hash)
        end
    end
end
