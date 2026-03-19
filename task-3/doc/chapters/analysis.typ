
= Dataset

The dataset chosen for this task is the MNIST dataset @deng2012mnist which contain images of digitized hand drawn digits from 0 to 9. All images have the same resolution of 28 $times$ 28 pixels. There are 70000 data points in this dataset where each datapoint corresponds to a 28 $times$ 28 matrix of numbers representing the black and white image. All features of this set are technically continuous, each pixel is represented by a value between 0 and 255 indicating its lightness value.

= Analysis

Since this dataset has _very_ many dimensions, it is not practical to display the percentages of total variances of all the principal components, so we will only do it for the first 10.

#figure(
  table(
    columns: 2,
    [ Component number ], [ Contained dispersion ],
    [PC1], [ 5.65% ],
    [PC2], [ 4.08% ],
    [PC3], [ 3.74% ],
    [PC4], [ 2.89% ],
    [PC5], [ 2.52% ],
    [PC6], [ 2.19% ],
    [PC7], [ 1.92% ],
    [PC8], [ 1.75% ],
    [PC9], [ 1.54% ],
    [PC10], [ 1.40% ],
    [*Total*], [ *27.6%* ]
),
caption: [ Percentage of the total variance in the first 10 components of the MNIST dataset. ]
) <vars>

As shown in @vars, the the first 10 components account for the \~28% of variance in this dataset. This shows that the datapoints are not random and that this dataset has structure which we know to be true - it contains images of numbers. However we can also conclude that there are more meaningful dimensions in this dataset which we cannot see in this list, but this is only natural because images of numbers can have various attributes like thickness of the lines, style of writing, ect. The first 2 principal components contain almost 10% of the total variance.

#figure(
  image("../assets/diagrams/pc1vspc2.png"),
  caption: "Scatter plot of the first two principal components. Each datapoint is colored differently based on the label (digit)."
) <pc12>

From @pc12 we can infer a lot about the structure of this data. The round shape of this structure indicates that neither of the two components are very dominant and that variance is equally distributed amongst them. We can see a clear separation for some digits like 0 which occupy a larger part of the structure which shows larger variance compared to datapoints labeled "1" which are are dispersed way less. This could be interpreted as images of zeroes having more variations which still are classified as zeros while ones have way less, perhaps because of the fact that the digit one has the simplest possible notation (a single line vertical in some cases). In @pc12 we also see a large amount of overlap between the clouds of other digits which signals that 2 components are insufficient to fully separate the data and efficiently visualize the dataset. In additional, the overlap also reflects on the similarity between certain digits like 5 and 8 (brown and yellow clouds are almost perfectly overlapped).

In this case visualization of the component axis gives us some insight into the structure of the dataset while direct visualization methods would not work so well on a dataset that has this many dimensions (something like a hierarchical parallel coordinate diagram would have to have 784 columns).

= General conclusions

PCA is a very useful visualization method for datasets which have a large number of dimensions when direct visualization methods become impractical. Visualizing the relationship between most dominant principal components can help us easily see the the relationships between data with different labels.