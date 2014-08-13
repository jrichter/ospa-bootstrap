# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/asset_pipeline'
require 'bootstrap-sass'

class App < Sinatra::Base
  set :environment, :production # run the rake task to precompile assets when going production
  register Sinatra::AssetPipeline

  get '/' do
    @site_title = 'OSPA'
    haml :index
  end

  get '/signup' do
    @site_title = 'OSPA'
    haml :signup
  end

  get '/contact' do
    @site_title = 'OSPA'
    haml :contact
  end


end
