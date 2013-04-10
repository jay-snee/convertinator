require 'json'
class ConverterController < ApplicationController


	def index
		respond_to do |format|
			format.html {
				if params[:xml]
					@converted_json = Hash.from_xml(params[:xml][:data]).to_json
				else
					@converted_json = nil
				end
			}
			format.xml { 
				@json = params.except(:controller, :action).to_json
			}
		end
	end


end
