munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

total_age_male = 0
munsters.each do |_, hsh|
  if hsh["gender"] == "male"
    total_age_male += hsh["age"]
  end
end

puts total_age_male

