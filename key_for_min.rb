# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  wanted_key = nil
  name_hash.each_with_index do |(key, value), index|
    wanted_key = key if index.zero?
    wanted_key = key if value < name_hash[wanted_key]
  end
  wanted_key
end