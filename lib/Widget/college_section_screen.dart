import 'package:college_erp/Widget/webview_screen.dart';
import 'package:flutter/material.dart';
import '../AppManager/Model/college_model.dart';
import '../data/college_list.dart';

class CollegeSelectionScreen extends StatefulWidget {
  const CollegeSelectionScreen({super.key});

  @override
  State<CollegeSelectionScreen> createState() =>
      _CollegeSelectionScreenState();
}

class _CollegeSelectionScreenState extends State<CollegeSelectionScreen> {
  College? selectedCollege;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("College ERP",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),

            const Text(
              "Select Your College",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            DropdownButtonFormField<College>(
              isExpanded: true,
              value: selectedCollege,
              decoration: InputDecoration(
                hintText: "Choose College",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              items: colleges.map((college) {
                return DropdownMenuItem(
                  value: college,
                  child: Text(
                    college.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              }).toList(),
              selectedItemBuilder: (context) {
                return colleges.map((college) {
                  return Text(
                    college.name,
                    overflow: TextOverflow.ellipsis,
                  );
                }).toList();
              },
              onChanged: (value) {
                setState(() {
                  selectedCollege = value;
                });
              },
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Your code
                },
                child: const Text(
                  "Open ERP",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}