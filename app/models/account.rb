class Account < ApplicationRecord
    belongs_to :user

    def self.get_with_params(params)
        c = Account.find_by(id: params[:id])
        c
    end

    def self.create_with_params(params)
        c = Account.new
        c.name = params[:name]
        c.user_id = params[:user_id]
        c.save
        c
    end
    
    def self.update_with_params(params)
        c = Account.find_by(id: params[:id])
        c.update(params)
        c
    end
    
    def self.destroy_with_params(params)
        c = Account.find_by(id: params[:id])
        c.destroy
    end
end