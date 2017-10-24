module V1
    module Entities
      class MovementEntity < Grape::Entity
        expose :description
        expose :amount
        expose :income
        expose :movement_type
        expose :account
        expose :user
        expose :currency
      end
    end
end