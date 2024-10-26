import 'package:flutter/material.dart';

Widget settingList(String title, String subtitle, {VoidCallback? onTap}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 4),
    title: Text(title),
    trailing: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(subtitle, style: TextStyle(color: Colors.grey)),
        Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red[600]),
      ],
    ),
    onTap: onTap,
  );
}

Widget settingListTanpaKeterangan(String title, {VoidCallback? onTap}) {
  return ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 4),
    title: Text(title),
    trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red[600]),
    onTap: onTap,
  );
}
