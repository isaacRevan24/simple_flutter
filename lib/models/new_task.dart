class NewTask {
  List<String> _members = ['Isaac Atencio', 'Arlette Perez', 'Mabelis Hidalgo'];
  List<String> _sections = ['bd', 'frontend', 'backend'];
  // Lista de tags creados por el manager para asignar.
  List<String> _tags = ['bd', 'frontend', 'backend'];
  String _taskTitle;
  String _taskDescription;
  bool _pullRequest = false;
  List<String> _inCharge = [];
  List<String> _selectedTags = [];
  String _selectedSection = "";

  /// Save title of the task
  void addTitle(String title) {
    _taskTitle = title;
  }

  /// Save description of the task
  void addDescriptio(String description) {
    _taskDescription = description;
  }

  /// If true the task must go to review else go direct to the project
  void setPullRequest(bool pr) {
    _pullRequest = pr;
  }

  /// If true the task must go to review else go direct to the project
  bool getPullRequest() {
    return _pullRequest;
  }

  /*Member logic start*/

  int memberListLength() {
    return _members.length - 1;
  }

  int inChargeListLength() {
    return _inCharge.length;
  }

  void addInChargeMember(int index) {
    _inCharge.add(_members[index]);
    _members.remove(_members[index]);
  }

  String memberName(int index) {
    return _members[index];
  }

  String inChargeMember(int index) {
    return _inCharge[index];
  }

  void removeInChargeMember(int index) {
    _members.add(_inCharge[index]);
    _inCharge.remove(_inCharge[index]);
  }

  /*Member logic end*/

  /*Tag logic start*/

  int tagListLength() {
    return _tags.length - 1;
  }

  int selectedTagsLength() {
    return _selectedTags.length;
  }

  void addTag(int index) {
    _selectedTags.add(_tags[index]);
    _tags.remove(_tags[index]);
  }

  String tagName(int index) {
    return _tags[index];
  }

  String selectedTagName(int index) {
    return _selectedTags[index];
  }

  void removeSelectedTag(int index) {
    _tags.add(_selectedTags[index]);
    _selectedTags.remove(_selectedTags[index]);
  }

  /*Tag logic end*/

  /*Sections logic start*/

  int sectionListLength() {
    return _sections.length - 1;
  }

  void selectSection(int index) {
    _selectedSection = _sections[index];
  }

  String sectionLabel(int index) {
    return _sections[index];
  }

  String selectedSectionName() {
    return _selectedSection;
  }

  void removeSelectedSection() {
    _selectedSection = "";
  }

  /*Sections logic end*/

  void imprimirValores() {
    print('Titulo: $_taskTitle');
    print('Descripción: $_taskDescription');
    print('Pull request: $_pullRequest');
    print('In charge members: $_inCharge');
    print('Selected tags: $_selectedTags');
  }
}
