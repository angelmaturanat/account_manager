module V1
    class AccountApi < Grape::API
        resource :accounts do
            desc 'Get All Accounts'
            get do
                account = Account.all
                present account, with: Entities::AccountEntity
            end
            
            desc 'Get an Account'
            params do
                requires :id, type: Integer, desc: 'Account id'
            end
            get ':id' do
                account = Account.get_with_params(params)
                present account, with: Entities::AccountEntity
            end

            desc 'Create an Account'
            params do
                requires :name, type: String, desc: 'Account name'
                requires :user_id, type: Integer, desc: 'Account user id'
            end
            post do
                account = Account.create_with_params(params)
                present account, with: Entities::AccountEntity
            end
            
            desc 'Update an Account'
            params do
                requires :id, type: Integer, desc: 'Account id'
            end
            put ':id' do
                account = Account.update_with_params(params)
                present account, with: Entities::AccountEntity
            end
            
            desc 'Destroy an Account'
            params do
                requires :id, type: Integer, desc: 'Account id'
            end
            delete ':id' do
                Account.destroy_with_params(params)
            end
        end
    end
end