module V1
    class CurrencyApi < Grape::API
        resource :currencies do
            desc 'Get All Currencies'
            get do
                currency = Currency.all
                present currency, with: Entities::CurrencyEntity
            end
            
            desc 'Get a Currency'
            params do
                requires :id, type: Integer, desc: 'Currency id'
            end
            get ':id' do
                currency = Account.get_with_params(params)
                present currency, with: Entities::CurrencyEntity
            end

            desc 'Create a Currency'
            params do
                requires :name, type: String, desc: 'Currency name'
                requires :code, type: String, desc: 'Currency code'
                requires :symbol, type: String, desc: 'Currency symbol'
                requires :exchange, type: BigDecimal, desc: 'Currency exchange'
            end
            post do
                currency = Currency.create_with_params(params)
                present currency, with: Entities::CurrencyEntity
            end
            
            desc 'Update an Currency'
            params do
                requires :id, type: Integer, desc: 'Currency id'
            end
            put ':id' do
                currency = Currency.update_with_params(params)
                present currency, with: Entities::CurrencyEntity
            end
            
            desc 'Destroy an Currency'
            params do
                requires :id, type: Integer, desc: 'Currency id'
            end
            delete ':id' do
                Currency.destroy_with_params(params)
            end
        end
    end
end