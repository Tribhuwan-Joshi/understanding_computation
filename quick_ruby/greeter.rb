class MegaGreeter
    attr_accessor :names

    def initialize(names="World")
        @names = names
    end

    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            # @names is a list of some kind, iterate!

            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end

    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            # @names is a list of some kind, iterate!
             puts "Goodbye #{@names.join(", ")}. Come back soon!"
            
        else
            puts "Goodbye #{@names}.  Come back soon!"
        end
    end
end


if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Zeke"
    mg.say_hi
    mg.say_bye

    mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye

    # Change to nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
end