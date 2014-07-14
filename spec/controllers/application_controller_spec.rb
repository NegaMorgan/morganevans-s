require 'spec_helper'

describe ApplicationController do
  describe 'homepage' do
    it 'loads the homepage' do
      get '/'
      
      expect(last_response.status).to be 200
      expect(last_response.body).to include 'Morgan'
    end
  end
end