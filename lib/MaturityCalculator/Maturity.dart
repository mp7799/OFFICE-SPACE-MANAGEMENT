class Maturity {
  int _numberOfMonths = 36,
      _projectCompleted = 20,
      _industrialLevelSkills = 20,
      _projectLead = 20,
      _projectOverseas = 2;
  double _maturity;

  double _getMaturity() {
    _maturity = (_numberOfMonths / 12) +
        (_projectCompleted / 20) +
        (_industrialLevelSkills / 20) +
        (_projectLead / 20) +
        ((_numberOfMonths / 12) * _projectOverseas);
    return _maturity;
  }
}
