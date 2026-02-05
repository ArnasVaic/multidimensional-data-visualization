// Formal requirements:
// Choose a multidimensional data set - from MSc thesis research, work, hobbies, or Internet (e.g. UCI Machine Learning Repository). Describe the data set in the report: meaning, numbers and properties of objects (instances) and features (attributes, parameters).

= Description

For this exercise I chose to analyse a dataset of red and white Portuguese "vinho werde" wines @wine_quality_186. This dataset contains 4898 instances with 11 different features which describe properties like color, alcohol concentration and more subtle chemical properties. The target feature which would be beneficial to predict is quality.

= Numbers 

This dataset contains 2 classes of wines (red and white) which total 4898 instances with 11 different features.

= Properties of objects (instances)

- No missing values
- Dataset is not balanced (many more instances of medium quality wine than excelent or poor ones)
- Authors warn that it is possible that not all input features are relevant for predicting the wine quality

= Features (attributes & parameters)

#align(center)[
#figure(
table(
  columns: 4,
  [*Parameter name*], [*Role*], [*Type*], [*Description*],
  [fixed_acidity], [Feature],	[Continuous], [],
  [volatile_acidity], [Feature],	[Continuous], [],
  [citric_acid], [Feature],	[Continuous], [],
  [residual_sugar], [Feature],	[Continuous], [],
  [chlorides], [Feature],	[Continuous], [],
  [free_sulfur_dioxide], [Feature],	[Continuous], [],
  [total_sulfur_dioxide], [Feature],	[Continuous], [],
  [density], [Feature],	[Continuous], [],
  [pH], [Feature],	[Continuous], [],
  [sulphates], [Feature],	[Continuous], [],
  [alcohol], [Feature],	[Continuous], [],
  [quality], [Target],	[Integer],	[score between 0 and 10],
  [color], [Other],	[Categorical], [red or white]
), caption: [ Wine Quality dataset features ]) <dataset-features>
]

As shown in @dataset-features Bulk of the dataset features are continous and focused on the chemical properties of wines. The only categorical feature is the color and the target feature is wine quality.