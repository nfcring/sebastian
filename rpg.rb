# coding: utf-8

#!/usr/bin/ruby
# coding: utf-8

require 'json'
require 'pp'

def welcome
  sleep(0.5)
  puts"Navnet pa spillet"
  sleep(1.5)
  puts "Skrevet av Sebastian Jossang og Asbjorn Thorsen"
  sleep(1.5)
end

def n_l(times = 1)
  times.times do
    print "\n"
  end
end

def clear
    print "\e[H\e[2J"
end

def hjelp
  clear()
  puts "Dette er en liste over mulige kommandoer:"
  puts "\u2712 " + "N"
  puts "\u2712 " + "S"
  puts "\u2712 " + "Ø"
  puts "\u2712 " + "V"
  puts "Trykk enter for å fortsette."
  gets
  #clear()
  kommando()
end

def kommando_spørsmål
  print "Skriv hjelp for oversikt over kommandoer.\n"
  print "\u2712 " + "Din kommando? "
  kommando = gets.chomp.downcase
  return kommando
  kommandoer(kommando)
end
kommando = kommando_spørsmål()

def kommandoer(kommando)
  kommando = kommando_spørsmål()
  puts kommando
  if (kommando == "hjelp")
    hjelp()
  elsif (kommando == "whereami")
    whereami()
  end
end

def hent_fil
  file = File.read('/home/sebastian/git/sebastian/map.json')
  data_hash = JSON.parse(file)
  return data_hash
end

def start(kart)
  kommando_spørsmål()
end

#clear()
#welcome()
#kart = hent_fil()
#start(kart['plasser'][0])


#puts kart['plasser'][0]['navn']
