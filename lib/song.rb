require 'pry'


require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
require_relative '../lib/concerns/findable'

class Artist
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable
  extend Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end