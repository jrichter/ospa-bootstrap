# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/asset_pipeline'


class App < Sinatra::Base
  set :environment, :development # run the rake task to precompile assets when going production
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
