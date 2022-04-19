class Produto < ApplicationRecord
    #kaminari
    paginates_per 5
    validates :nomeproduto, presence: true
    validates :dtavalidade, presence: true
    validates :codbarras, presence: true

end
