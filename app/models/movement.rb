class Movement < ApplicationRecord
    has_many :currency_movements
    belongs_to :account
    belongs_to :user
    belongs_to :movement_type
    belongs_to :currency
    
    def self.get_with_params(params)
        m = Movement.find_by(id: params[:id])
        m
    end

    def self.create_with_params(params)
        m = Movement.new
        m.description = params[:description]
        m.amount = params[:amount]
        m.income = params[:income]
        m.movement_type_id = params[:movement_type_id]
        m.account_id = params[:account_id]
        m.user_id = params[:user_id]
        m.currency_id = params[:currency_id]
        m.save
        m
    end
    
    def self.update_with_params(params)
        m = Movement.find_by(id: params[:id])
        m.update(params)
        m
    end
    
    def self.destroy_with_params(params)
        m = Movement.find_by(id: params[:id])
        m.destroy
    end
end