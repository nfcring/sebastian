#!/usr/bin/ruby
# coding: utf-8

require 'json'
require 'pp'

def welcome
  sleep(0.5)
  puts"Navnet på spillet"
  sleep(1.5)
  puts "Skrevet av Sebastian Jøssang og Asbjørn Thorsen"
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
  puts "Dette er en liste over mulige kommandoer:"
  puts "\u2712 " + "N"
  puts "\u2712 " + "S"
  puts "\u2712 " + "Ø"
  puts "\u2712 " + "V"
  puts "Trykk enter for å fortsette."
  gets
  clear()
  kommando()
end



def kommando
  print "Skriv hjelp for oversikt over kommandoer.\n"
  print "\u2712 " + "Din kommando? "
  hjelp = gets.chomp.downcase
  if (hjelp == "hjelp")
    hjelp()
  else
    return hjelp
  end
end

def hvor
  puts posisjon
end

def posisjon

  return #posisjonen din
end

def hent_fil
  file = File.read('/Users/asbjornt/programmering/ruby/map.json')
  data_hash = JSON.parse(file)
  return data_hash
end

def start(kart)
  kommando = kommando()
end

clear()
#welcome()
#clear()
kart = hent_fil()
start(kart['plasser'][0])

#puts kart['plasser'][0]['navn']
