-- $Id$
-- http://www.bagley.org/~doug/shootout/
-- implemented by: Roberto Ierusalimschy

local nums = {}
local n = 0
local sum = 0
local line
repeat
  line = read()
  if line then
    line = line+0        -- convert line to number
    sum = sum + line
    n = n + 1
    nums[n] = line
  end
until not line 

local mean = sum/n

local average_deviation, variance, skew, kurtosis = 0, 0, 0, 0

local i = 1
while i <= n do
  local deviation = nums[i] - mean
  average_deviation = average_deviation + abs(deviation)
  variance = variance + deviation^2
  skew = skew + deviation^3
  kurtosis = kurtosis + deviation^4
  i = i + 1
end

average_deviation = average_deviation/n
variance = variance/(n-1)
local standard_deviation = sqrt(variance)
if variance ~= 0 then
  skew = skew / (n * variance * standard_deviation)
  kurtosis = kurtosis/(n * variance * variance) - 3.0
end

sort(nums)
local mid = floor(n/2)
local median
if mod(n,2) == 1 then
  median = nums[mid+1]
else
  median = (nums[mid] + nums[mid+1])/2
end

write(format("n:                  %d\n", n))
write(format("median:             %f\n", median))
write(format("mean:               %f\n", mean))
write(format("average_deviation:  %f\n", average_deviation))
write(format("standard_deviation: %f\n", standard_deviation))
write(format("variance:           %f\n", variance))
write(format("skew:               %f\n", skew))
write(format("kurtosis:           %f\n", kurtosis))
