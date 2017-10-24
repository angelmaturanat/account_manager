module V1
    module Entities
      class CurrencyEntity < Grape::Entity
        expose :name
        expose :code
        expose :symbol 
        expose :exchange
      end
    end
end