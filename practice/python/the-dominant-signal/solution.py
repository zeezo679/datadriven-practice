def most_frequent(items: list) -> list:
  if not items:
    return []
  
  freq = {}
  for code in items:
    freq[code] = freq.get(code, 0) + 1
    
  max_freq = max(freq.values())
  return sorted([code for code, count in freq.items() if count == max_freq])
  
  
