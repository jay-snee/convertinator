require 'json'
class ConverterController < ApplicationController


	def index
		if params[:xml]
			@converted_json = Hash.from_xml(params[:xml][:data]).to_json
		else
			@converted_json = nil
		end
	end


end
