class ReservationsController < ApplicationController
    def index
    end

    def rates
        @reservation = Reservation.new
    end

    def new
        @reservation = Reservation.new
    end
end
