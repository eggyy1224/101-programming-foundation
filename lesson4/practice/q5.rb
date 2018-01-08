flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index { |x, i| puts i if x.start_with?('Be') }