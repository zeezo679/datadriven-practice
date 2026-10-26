from collections import defaultdict

def dedup_preserve_order(items: list) -> list:
  visited = defaultdict(bool)
  result = []
  for item in items:
    if visited[item] == True:
      continue
     
    result.append(item)
    visited[item] = True
  return result
