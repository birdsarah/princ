# print pandas descriptive statistics

import feather
import sys

path = sys.argv[1]
df = feather.read_dataframe(path)
print(df.describe())
