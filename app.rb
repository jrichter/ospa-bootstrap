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

  get '/invitation.pdf' do
    send_file "invitation.pdf", :filename => "invitation.pdf", :type => 'Application/octet-stream'
  end

  get '/hotel.pdf' do
    send_file "hotel.pdf", :filename => "hotel.pdf", :type => 'Application/octet-stream'
  end

  get '/farm_registration.pdf' do
    send_file "farm_registration.pdf", :filename => "farm_registration.pdf", :type => 'Application/octet-stream'
  end

  get '/ScheduleOfEventsAndContestRules.pdf' do
    send_file "ScheduleOfEventsAndContestRules.pdf", :filename => "ScheduleOfEventsAndContestRules.pdf", :type => 'Application/octet-stream'
  end
end
