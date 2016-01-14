module WelcomeHelper
  # noinspection RubyArgCount
  def self.generate_phrase
    @temp_phrase = Phrase.skip(rand(Phrase.count)).first.phrase
    @temp_phase_array = @temp_phrase.split(/[\s.,' ]/)

    counts = Hash.new 0
    @temp_phase_array.each do |word|
      counts[word] += 1
    end

    @noun_count = counts['#noun'] + 5
    @adjective_count = counts['#adjective'] + 5

    @noun_array = Array.new(@noun_count)
    @noun_array.map! {
        |x| x = Noun.skip(rand(Noun.count)).first.noun
    }

    @adjective_array = Array.new(@adjective_count)
    @adjective_array.map! {
        |x| x = Adjective.skip(rand(Adjective.count)).first.adjective
    }


    @new_phrase = @temp_phrase.dup

    for i in 1..@noun_count
      @new_phrase.sub!('#noun', @noun_array.pop)
    end

    for i in 1..@adjective_count
      @new_phrase.sub!('#adjective', @adjective_array.pop)
    end

    return @new_phrase
  end
end
