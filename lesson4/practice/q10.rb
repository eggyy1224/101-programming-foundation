require "pry"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key,value| 
  
  age_value = if value["age"] <= 17
                'kid'
              elsif value["age"].between?(18, 64)
                'adult'
              elsif value["age"] >= 65 
                'senior'
              end

  value["age_group"] = age_value
end

p munsters