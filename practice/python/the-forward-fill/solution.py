def forward_fill(values: list) -> list:
  
  curr = None
  for i in range(len(values)):
    if values[i] is not None:
      curr = values[i]
    if values[i] is None:
      values[i] = curr
  return values
