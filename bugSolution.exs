```elixir
# Solution 1: Using Enum.filter
list = [1, 2, 3, 4, 5]

new_list = Enum.filter(list, fn x -> x != 3 end)

IO.inspect(new_list) # Output: [1, 2, 4, 5]

# Solution 2: Using Enum.reduce
list = [1, 2, 3, 4, 5]

new_list = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)

IO.inspect(Enum.reverse(new_list)) # Output: [1, 2, 4, 5]
```