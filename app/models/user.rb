class User < ActiveRecord::Base
	scope :recieves_email, -> {where(receive_email: true)}
	scope :recieves_text,  -> {where(recieve_text:  true)}
end
