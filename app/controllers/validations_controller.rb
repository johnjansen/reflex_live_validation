# frozen_string_literal: true

class ValidationsController < ApplicationController
    def show
        @user ||= User.new(user_params)
        puts "USER " * 5
        puts user_params
        puts @user.inspect
        @user.validate
    end
  
    private
  
    def user_params
      puts params.inspect
      return {} unless params.key?(:user)
      params.require(:user).permit(:first_name, :last_name, :email)
    end
  end
  