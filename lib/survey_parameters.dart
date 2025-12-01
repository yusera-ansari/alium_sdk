class SurveyParameters {
  final String screenName;
  final Map<String, String> customerVariables;

  // Constructors similar to Java version
  SurveyParameters(this.screenName) : customerVariables = {};

  SurveyParameters.withVariables(
    this.screenName,
    Map<String, String> customerVariables,
  ) : customerVariables = Map<String, String>.from(customerVariables);

  // Private constructor for builder
  SurveyParameters._builder(SurveyParametersBuilder builder)
      : screenName = builder.screenName,
        customerVariables = Map<String, String>.from(builder.customerVariables);

  @override
  String toString() =>
      'SurveyParameters(screenName: $screenName, customerVariables: $customerVariables)';
}

class SurveyParametersBuilder {
  final String screenName;
  final Map<String, String> customerVariables = {};

  SurveyParametersBuilder(this.screenName);

  SurveyParametersBuilder addDim(int number, String? value) {
    customerVariables["dim$number"] = value ?? '';
    return this;
  }

  SurveyParametersBuilder addCustom(String key, String? value) {
    customerVariables[key] = value ?? '';
    return this;
  }

  // Clean empty or whitespace-only values
  void _clean() {
    customerVariables.removeWhere(
      (key, value) => value.trim().isEmpty,
    );
  }

  SurveyParameters build() {
    _clean();
    return SurveyParameters._builder(this);
  }
}
