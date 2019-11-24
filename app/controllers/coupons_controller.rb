class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def new
        @coupon = Coupon.new
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        w = params.require(:coupon).permit(:coupon_code, :store)
        redirect_to(coupon_path(Coupon.create(w).id))
    end
end
