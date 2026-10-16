from collections import defaultdict

def most_frequent(items: list) -> list:
  if not items:
    return []
  
  freq = defaultdict(int)
  for code in items:
    freq[code] += 1
    
  max_freq = max(freq.values())
  return sorted([code for code, count in freq.items() if count == max_freq])
  
  
