module Dorian
  class Each
    def self.run
      if ARGV.size != 1 || ARGV[0] == "--help" || ARGV[0] == "-h"
        puts "USAGE: ... | each CODE"
        exit
      end

      STDIN.each_line do |line|
        l = line
        eval(ARGV.first)
      end
    end
  end
end
