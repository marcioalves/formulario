class Entidade < ActiveRecord::Base
	has_many :enderecos

	accepts_nested_attributes_for :enderecos
	
	scope :by_CEP, lambda { |cep| where('cep = ?', "#{cep}") unless cep.blank? }


end
