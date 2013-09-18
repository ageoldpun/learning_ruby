require "test/unit/assertions"
include Test::Unit::Assertions

cats = ["off"] * 100

100.times do |round|
  100.times do |index|
    cat_index = round*index
    unless cat_index > 99
      cats[cat_index] == "on" ? cats[cat_index] = "off" : cats[cat_index] = "on"
    end
  end
end

assert_equal cats, ["on", "on", "off", "off", "on", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "on", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off", "off"]
