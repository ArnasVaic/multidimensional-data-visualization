= Description

For this exercise I chose to analyse a dataset of mushrooms @mushroom_73. This dataset contains 8124 instances with 22 different features. The target feature of this dataset is a categorical value to decide wether a specific mushroom is poisonous or not. In the following analysis not all features will be visualized but a selected few which are known to differentiate poisonous and edible mushrooms.

= Parallel Coordinates Plot

#figure(
  image("../assets/diagrams/parallel.png"),
  caption: [Parallel coordinates plot.]
) <par>

We can see in @par that certain features like `odor` and `spore-print-color` can be strong indicators whether a mushroom is poisonous or not because edible mushrooms have a subset of values for this feature which almost does not intersect with subset of values that are often used by poisonous mushrooms. For additional clarity this is the group of odors associated mainly by edible mushrooms:

- Almond
- Anise
- None

While these odors are associated with poisonous mushrooms:

- Creosote
- Foul
- Musty
- None
- Pungent
- Spicy
- Fishy

= Andrews Curves

#figure(
  image("../assets/diagrams/andrew.png"),
  caption: [Andrews Curves]
) <andrew>

The method seen in @andrew projects multidimensional categorical data into continuous functions. In a perfect scenario we would hope to get different color bands which are not overlapping to reveal hidden classes but in this case we can see that from the number of features we chose, we cannot identify distinctly different classes of mushrooms because the plots are very much overlapping one another.

= RadViz Projection

#figure(
  image("../assets/diagrams/radviz.png", width: 240pt),
  caption: [RadViz projection]
) <radviz>

@radviz shows us an intuitive representation of multidimensional data. In this case we see a large overlap between sets of points identifying poisonous and edible mushrooms indicating as in previous figure, that this subset of feature may not suffice in differentiating between these two classes of mushrooms.

#heading(numbering: none, "Conclusions")

In this analysis it was made apparent that parallel coordinates plot is the most useful to analyze subset of features in a dataset where not all of them help to differentiate the classes. It could be argued that this is because of the clear separation of dimensions which then makes it very easy to see the different sets values preferred by both classes. This property is not shared with other visualization methods and so we do not see such clear results in the other two plots in @andrew and @radviz. That is not to say these plots are not useful in general. For subset of features where a larger number of them could be used to differentiate the classes the results would be clearer, in this case half the features were not useful for the differentiation thus the uninformative result.