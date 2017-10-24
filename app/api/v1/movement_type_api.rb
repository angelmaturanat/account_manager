module V1
    class MovementTypeApi < Grape::API
        resource :movementtypes do
            desc 'Get All Movement types'
            get do
                movement_type = MovementType.all
                present movement_type, with: Entities::MovementTypeEntity
            end

            desc 'Create a Movement Type'
            params do
                requires :name, type: String, desc: 'Movement type name'
            end
            post do
                movement_type = MovementType.create_with_params(params)
                present movement_type, with: Entities::MovementTypeEntity
            end
            
            desc 'Update a Movement Type'
            params do
                requires :id, type: Integer, desc: 'Movement type id'
            end
            put ':id' do
                movement_type = MovementType.update_with_params(params)
                present movement_type, with: Entities::MovementTypeEntity
            end
            
            desc 'Destroy a Movement Type'
            params do
                requires :id, type: Integer, desc: 'Movement type id'
            end
            delete ':id' do
                MovementType.destroy_with_params(params)
            end
        end
    end
end