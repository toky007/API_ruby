require 'bundler'

Bundler.require

class Larves
  def initialize
    # Recuperation des APIs en utilisant le filtre REST
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

  # Ecriture dans le fichier JSON
  def to_json_larves
    File.open("./db/larves.json", 'w') do |file|
      file.write(@type)
    end
    puts "Fichier larves.json "
  end
end

class Monstres_des_cavernes
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def to_json_monsters1
    File.open("./db/Monstres_des_cavernes.json", 'w') do |file|
      file.write(@type)
    end
    puts "Fichier Monstres_des_cavernes.json"
  end
end

class Monstres_des_plaines
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def to_json_monsters2
    File.open("./db/Monstres_des_plaines_herbeuses.json", 'w') do |file|
      file.write(@type)
    end
    puts "Fichier Monstres_des_plaines_herbeuses.json"
  end
end
