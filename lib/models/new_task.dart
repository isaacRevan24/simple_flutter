class NewTask {
  List<String> _members = ['Isaac Atencio', 'Arlette Perez', 'Mabelis Hidalgo'];
  // List<String> _sections;
  // Lista de tags creados por el manager para asignar.
  List<String> _tags = ['bd', 'frontend', 'backend'];
  String taskTitle;
  String taskDescription;
  bool pullRequest = false;
  List<String> _inCharge = [];
  List<String> _selectedTags = [];
  // String _selectedSection;

  /// Save title of the task
  void addTitle(String title) {
    taskTitle = title;
  }

  /// Save description of the task
  void addDescriptio(String description) {
    taskDescription = description;
  }

  /// If true the task must go to review else go direct to the project
  void setPullRequest(bool pr) {
    pullRequest = pr;
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

  void imprimirValores() {
    print('Titulo: $taskTitle');
    print('Descripción: $taskDescription');
    print('Pull request: $pullRequest');
  }
}
