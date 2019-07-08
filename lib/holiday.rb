require 'pry'


# given that holiday_hash looks like this:
# {
#   :winter => {
#     :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }
# return

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do | holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]= supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
   winter_supplies = holiday_hash[:winter].collect do |holiday, supplies|
     supplies
  end
  return winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize! << ":"
      holidays.each do | holiday, supplies|
        holiday = holiday.to_s.split("_").collect {|i| i.capitalize}.join(" ")
        supplies = supplies.join(", ")
        puts "  " + holiday << ": " + supplies

        end
      end
  end


def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply  == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  return bbq_holidays
end




























# def second_supply_for_fourth_of_july(holiday_hash)
#   # given that holiday_hash looks like this:
#   # {
#   #   :winter => {
#   #     :christmas => ["Lights", "Wreath"],
#   #     :new_years => ["Party Hats"]
#   #   },
#   #   :summer => {
#   #     :fourth_of_july => ["Fireworks", "BBQ"]
#   #   },
#   #   :fall => {
#   #     :thanksgiving => ["Turkey"]
#   #   },
#   #   :spring => {
#   #     :memorial_day => ["BBQ"]
#   #   }
#   # }
#   # return the second element in the 4th of July array
#   holiday_hash[:summer][:fourth_of_july][1]
# end
#
# def add_supply_to_winter_holidays(holiday_hash, supply)
#   # holiday_hash is identical to the one above
#   # add the second argument, which is a supply, to BOTH the
#   # Christmas AND the New Year's arrays
#   holiday_hash[:winter].each do |holiday, lists|
#     lists << supply
#   end
#
#
# end
#
#
# def add_supply_to_memorial_day(holiday_hash, supply)
#   # again, holiday_hash is the same as the ones above
#   # add the second argument to the memorial day array
#       holiday_hash[:spring].each do |holiday, lists|
#         lists << supply
#       end
#
# end
#
# def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   # code here
#   holiday_hash[season][holiday_name] = supply_array
#
#   # remember to return the updated hash
# holiday_hash
# end
#
# def all_winter_holiday_supplies(holiday_hash)
#   winter_supplies = holiday_hash[:winter].collect  do |holiday_name, supplies|
#     supplies
#   end
#     winter_supplies.flatten
#   # return an array of all of the supplies that are used in the winter season
#
# end
#
# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, holiday|
#     puts season.to_s.capitalize! << ":"
#     holiday.each do |holiday, supplies|
#       supplies = supplies.join(", ")
#       holiday= holiday.to_s.split("_").collect {|x| x.capitalize}.join(" ")<< ":"
#       puts "  " + holiday + " " + supplies
#     end
#   end
# end
#   # iterate through holiday_hash and print items such that your readout resembles:
#   # Winter:
#   #   Christmas: Lights, Wreath
#   #   New Years: Party Hats
#   # Summer:
#   #   Fourth Of July: Fireworks, BBQ
#   # etc.
#
#
# def all_holidays_with_bbq(holiday_hash)
#   grill_holidays = []
#   holiday_hash.each do |season, holiday|
#     holiday.each do |holiday, lists|
#       lists.each do |supplies|
#       if supplies == "BBQ"
#         grill_holidays.push(holiday)
#       end
#     end
#   end
# end
#   grill_holidays
# end
#
