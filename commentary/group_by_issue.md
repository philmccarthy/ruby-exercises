In the group_by enumerables exercise, the `test_group_by_order_of_magnitude` seems to be expecting something other than order of magnitude. I did some googling to figure out how to calculate order of magnitude ([see the Wikipedia article](https://en.wikipedia.org/wiki/Order_of_magnitude)) and in Ruby we can use `Math.log10(X).floor` for an approximation.

For example, as the Wikipedia article states, the OOM of 1 is zero, not one:

```sh
pry(main)> number = 1
=> 1
pry(main)> Math.log10(number)
=> 0.0
pry(main)> 1*10**0
=> 1
```

Below is a suggested change that adjusts the keys in `expected` by -1 (the test is the same in both group_by test files).
```ruby
def test_group_by_order_of_magnitude
    skip
    numbers = [1, 3, 503, 239, 4938, 3932, 19982, 93, 21, 501787]
    # Your code goes here
    expected = {0=>[1, 3], 1=>[93, 21], 2=>[503, 239], 3=>[4938, 3932], 4=>[19982], 5=>[501787]}
    assert_equal expected, grouped
  end
  ```

It could it also make more sense to change the test names to something like `test_group_by_number_of_digits` if figuring out an order of magnitude calculation is more effort than intended.
