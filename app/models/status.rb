class Status < ActiveRecord::Base
	belongs_to :user

	validate :contenido, presence: true,
						 lenght: {minimun: 2},
    
    validate :user_id, presence: true

end
