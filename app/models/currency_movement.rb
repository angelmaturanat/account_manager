class CurrencyMovement < ApplicationRecord
    belongs_to :currency
    belongs_to :movement


    def self.create_with_params(params)
        cm = CurrencyMovement.new
        cm.currency_id = params[:currency_id]
        cm.movement_id = params[:movement_id]
        cm.exchange = params[:exchange]
        cm.save
        cm
    end    
    
    def self.update_with_params(params)
        cm = CurrencyMovement.find_by(currency_id: params[:currency_id], movement_id: params[:movement_id])
        cm.update(params)
        cm
    end

    def self.destroy_with_params(params)
        cm = CurrencyMovement.find_by(currency_id: params[:currency_id], movement_id: params[:movement_id])
        cm.destroy
    end
end