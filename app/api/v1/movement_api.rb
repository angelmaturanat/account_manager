module V1
    class MovementApi < Grape::API
        resource :movements do
            desc 'Get All Movements'
            get do
                movement = Movement.all
                present movement, with: Entities::MovementEntity
            end
            
            desc 'Get a Movement'
            params do
                requires :id, type: Integer, desc: 'Movement id'
            end
            get ':id' do
                movement = Movement.get_with_params(params)
                present movement, with: Entities::MovementEntity
            end

            desc 'Create a Movement'
            params do
                requires :description, type: String, desc: 'Movement description'
                requires :amount, type: BigDecimal, desc: 'Movement amount'
                requires :income, type: Boolean, desc: 'Movement income'
                requires :movement_type_id, type: Integer, desc: 'Movement type id'
                requires :account_id, type: Integer, desc: 'Movement account id'
                requires :user_id, type: Integer, desc: 'Movement user id'
                requires :currency_id, type: Integer, desc: 'Movement currency id'
            end
            post do
                movement = Movement.create_with_params(params)
                present movement, with: Entities::MovementEntity
            end
            
            desc 'Update a Movement'
            params do
                requires :id, type: Integer, desc: 'Movement id'
            end
            put ':id' do
                movement = Movement.update_with_params(params)
                present movement, with: Entities::MovementEntity
            end
            
            desc 'Destroy a Movement'
            params do
                requires :id, type: Integer, desc: 'Movement id'
            end
            delete ':id' do
                Movement.destroy_with_params(params)
            end
        end
    end
end