class IndexController < ApplicationController
    before_action :authenticate_user!
    layout 'menuInicialApplication'
    def index

    end
end
