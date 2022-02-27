class RecentFile {
  final String icon, title, date, size;

  RecentFile(
      {required this.icon,
      required this.title,
      required this.date,
      required this.size});
}

List demoRecentFiles = [
  RecentFile(
      icon: "assets/icons/menu_doc.svg",
      title: "XD Files",
      date: "27-02-2021",
      size: "19.0mb"),
  RecentFile(
      icon: "assets/icons/menu_doc.svg",
      title: "2 XD Files",
      date: "27-02-2021",
      size: "19.0mb"),
  RecentFile(
      icon: "assets/icons/menu_doc.svg",
      title: "3 XD Files",
      date: "27-02-2021",
      size: "19.0mb"),
];
