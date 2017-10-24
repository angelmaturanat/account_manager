class Currency < ApplicationRecord
    has_many :movements
    has_many :currency_movements

    def self.get_with_params(params)
        c = Currency.find_by(id: params[:id])
        c
    end

    def self.create_with_params(params)
        crr = Currency.new
        crr.code = params[:code]
        crr.name = params[:name]
        crr.symbol = params[:symbol]
        crr.exchange = params[:exchange]
        crr.save
        crr
    end
    
    def self.update_with_params(params)
        crr = Currency.find_by(id: params[:id])
        crr.update(params)
        crr
    end
    
    def self.destroy_with_params(params)
        crr = Currency.find_by(id: params[:id])
        crr.destroy
    end
end