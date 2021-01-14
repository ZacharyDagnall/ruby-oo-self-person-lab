# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account  #I feel that @bank_account shouldnt be directly accessible but only changeable through a method, but that didn't pass the tests
    MIN_HAPPINESS = 0
    MAX_HAPPINESS = 10
    MIN_HYGIENE = 0
    MAX_HYGIENE = 10

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happy?
        happiness > 7
    end

    def clean?
        hygiene > 7
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene+4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(my_guy)
        my_guy.happiness = my_guy.happiness + 3
        self.happiness = self.happiness + 3
        # my_guy.update_happiness(3)
        # self.update_happiness(3)
        "Hi #{my_guy.name}! It's #{self.name}. How are you?"
    end

    # def update_happiness(num)   #accepts + or - num, checks for max/min and adjusts accordingly
    #     @happiness += num
    #     if @happiness > MAX_HAPPINESS   # I tried using ||= instead of these if-blocks but not sure how to incorporate the syntax, nor if it can be used here
    #         @happiness =  MAX_HAPPINESS
    #     elsif @happiness < MIN_HAPPINESS 
    #         @happiness = MIN_HAPPINESS
    #     end
    #     @happiness
    # end

    def happiness=(num)
        @happiness = num
        if @happiness > MAX_HAPPINESS   # I tried using ||= instead of these if-blocks but not sure how to incorporate the syntax, nor if it can be used here
            @happiness =  MAX_HAPPINESS
        elsif @happiness < MIN_HAPPINESS 
            @happiness = MIN_HAPPINESS
        end
        @happiness
    end

    # def update_hygiene(num)     #accepts + or - num, checks for max/min and adjusts accordingly
    #     @hygiene += num
    #     if @hygiene > MAX_HYGIENE
    #         @hygiene = MAX_HYGIENE
    #     elsif @hygiene < MIN_HYGIENE
    #         @hygiene = MIN_HYGIENE
    #     end
    #     @hygiene
    # end

    def hygiene=(num)
        @hygiene = num
        if @hygiene > MAX_HYGIENE
            @hygiene = MAX_HYGIENE
        elsif @hygiene < MIN_HYGIENE
            @hygiene = MIN_HYGIENE
        end
        @hygiene
    end

    def start_conversation(my_guy, whats_goin_on)
        case whats_goin_on
        when "politics"
            self.happiness = self.happiness - 2         #I feel like my #update_ methods make this slightly less clunky.
            my_guy.happiness = my_guy.happiness - 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness = self.happiness + 1
            my_guy.happiness = my_guy.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end
