LIGHTS_BANK = {}
(1..1000).each do |light_number|
  LIGHTS_BANK[light_number] = 'off'
end

AMOUNT_SWITCHES = LIGHTS_BANK.size

def toggle_lights
  toggle = ['off', 'onn']
  1.upto(AMOUNT_SWITCHES) do |num|
    toggle = toggle.reverse
    multiply = num
    counter = 1
    loop do
      light_number = counter * multiply
      break if light_number > AMOUNT_SWITCHES
      if LIGHTS_BANK[light_number] == toggle[0]
        LIGHTS_BANK[light_number] = toggle[1]
      else
        LIGHTS_BANK[light_number] = toggle[0]
      end
      counter += 1
    end
  end
   lights_onn = LIGHTS_BANK.select { |key, value| value == 'onn'}
   lights_onn.keys
end

p toggle_lights

#another way
def toggle_on_and_off(lights)
  1.upto(lights.size) do |round_number|
    lights.each do |position, value|
      if position % round_number == 0
        value == 'off' ? lights[position] = 'onn' : lights[position] = 'off'
      end
    end
  end
end

def on_lights(lights)
  lights.keys.select { |key| lights[key] == 'onn' }
end

lights = Hash.new
1.upto(1000) { |number| lights[number] = 'off' }
toggle_on_and_off(lights)
p on_lights(lights)

# Further Exploration using an array instead of a hash with taking in account we know that every light number which is on is a square
def toggle_lights(lights)
  lights_on = []
  light_number = 1
  square = 0
  loop do
    square = light_number * light_number
    break if square > 1000
    lights_on << square
    light_number += 1
  end
  lights_on
end

lights = (1..1000).to_a
p toggle_lights(lights)
