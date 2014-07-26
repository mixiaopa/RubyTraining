def split_hash_by_key (*hash_to_split)

  hash = hash_to_split.at(0)
  keys = hash_to_split[1..hash_to_split.size]

  part_hash = Hash.new
  result = Array.new
  i = 0
  countKey = 0

  hash.each_key { |p|
    i += 1
    if keys.index(p) == nil
      part_hash[p] = hash[p]
      if i>=hash.size
        result.push(part_hash.clone)
      end
    else
      countKey += 1
      if part_hash.size != 0
        result.push(part_hash.clone)
      end
      part_hash.clear
      part_hash[p] = hash[p]
      if i>=hash.size
        result.push(part_hash.clone)
      end
    end
  }

  if countKey != 0
    return result
  end
end