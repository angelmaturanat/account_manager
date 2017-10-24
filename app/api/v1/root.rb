module V1
    class Root < Grape::API
        version 'v1'
        format :json
        prefix :api

        get :status do
            { status: 'OK!'}
        end

        mount V1::AccountApi
        mount V1::CurrencyApi
        mount V1::MovementTypeApi
        mount V1::MovementApi
    end
end