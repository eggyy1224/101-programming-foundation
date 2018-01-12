def staggered_case(str, alpha_only=false)
  switch = true
  new_str = ''
  str.chars.each do |char|
    if char.match?(/[a-zA-Z]/) || alpha_only
      
      if switch 
      
        switch = !switch  
        new_str += char.upcase
      else
      
        switch = !switch
        new_str += char.downcase
      end
    else
      new_str += char 
    end
  end
  new_str
end

p staggered_case('I Love Launch School!')
puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

puts staggered_case('I Love Launch School!', true ) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'