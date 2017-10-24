class MovementType < ApplicationRecord
    has_many :movements
    
    def self.get_with_params(params)
        c = MovementType.find_by(id: params[:id])
        c
    end

    def self.create_with_params(params)
        mt = MovementType.new
        mt.name = params[:name]
        mt.save
        mt
    end
    
    def self.update_with_params(params)
        mt = MovementType.find_by(id: params[:id])
        mt.update(params)
        mt
    end
    
    def self.destroy_with_params(params)
        mt = MovementType.find_by(id: params[:id])
        mt.destroy
    end
end