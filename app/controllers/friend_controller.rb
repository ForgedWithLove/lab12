# frozen_string_literal: true

class FriendController < ApplicationController
  def input; end

  def view
    v1 = params[:v1]
    @result = if (/^[0-9]+/=~v1).nil?
                'Error'
              else
                friend_comp(v1.to_i)
              end
  end

  def friend_comp(right)
    res = []
    (1..right).each do |number|
      sumdel = 0
      revsumdel = 0
      (1..number / 2).each do |del|
        sumdel += del if (number % del).zero?
      end
      (1..sumdel / 2).each do |revdel|
        revsumdel += revdel if (sumdel % revdel).zero?
      end
      if number == revsumdel && number != sumdel && (res[res.length - 1] != [sumdel, revsumdel])
        res.push([revsumdel, sumdel])
      end
    end
    res
  end
end
