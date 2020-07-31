class NewTask {
  // List<String> _members;
  // List<String> _sections;
  // List<String> _tags;
  String taskTitle;
  String description;
  bool pullRequest = false;
  // List<String> _inCharge;
  // List<String> _selectedTags;
  // String _selectedSection;

  void addTitle(String title) {
    taskTitle = title;
    print('Titulo agregado');
  }

  void addDescriptio(String description) {
    description = description;
    print('Descripción agregada');
  }

  void setPullRequest(bool pr) {
    pullRequest = pr;
  }

  void imprimirValores() {
    print('Titulo: $taskTitle');
    print('Descripción: $description');
    print('Pull request: $pullRequest');
  }
}
