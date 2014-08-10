# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/asset_pipeline'


class App < Sinatra::Base
  set :environment, :development # run the rake task to precompile assets when going production
  register Sinatra::AssetPipeline

  get '/' do
    @site_title = 'Bootstrap Sinatra'
    haml :index
  end

end
