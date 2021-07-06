require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  second_supply = ""
  holiday_hash.each do |season, holiday|
    if season == :summer
      holiday.each do |holiday, supply|
      if holiday == :fourth_of_july
        second_supply = supply[1]
      end
    end
  end
end
second_supply

end
# given that holiday_hash looks like this:
# {
#   :winter => {
#    :christmas => ["Lights", "Wreath"],
#     :new_years => ["Party Hats"]
#  },
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
# return the second element in the 4th of July array

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do|holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
      end
    end
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday = {holiday_name => supply_array}
  holiday_hash[season] = new_holiday

  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
        winter_supplies << supplies
      end
    end
  end

  all_winter_supplies = winter_supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split('_').map(&:capitalize).join(' ')}: #{supplies.join(", ")}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  
  bbq_holidays

end
