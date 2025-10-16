import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestCheckbox extends StatefulWidget {
  const InterestCheckbox({super.key});

  @override
  State<InterestCheckbox> createState() => _InterestCheckboxState();
}

class _InterestCheckboxState extends State<InterestCheckbox> {
  final categories = [
    '글쓰기',
    '구기종목',
    '음악',
    '요리',
    '컴퓨터',
    '생명과학',
    '건강생활',
    '동물',
    '지구',
    '곤충',
    '괴담',
    '자연',
  ];

  final selected = <String>{'글쓰기', '음악'};

  void _toggle(String interest) {
    final isChecked = selected.contains(interest);
    setState(() {
      if (isChecked) {
        selected.remove(interest);
      } else {
        if (selected.length < 2) {
          selected.add(interest);
        }else{
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("최대 2개까지만 선택할 수 있습니다.")),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3.6,
      mainAxisSpacing: 8,
      crossAxisSpacing: 16,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: categories.map((label) => items(label)).toList(),
    );
  }

  Widget items(String interest) {
    final isChecked = selected.contains(interest);

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => _toggle(interest),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (_) => setState(() {
              isChecked ? selected.remove(interest) : selected.add(interest);
            }),
            side: const BorderSide(color: Colors.white70, width: 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            checkColor: Colors.black,
            fillColor: WidgetStateProperty.resolveWith((states) {
              // 선택 시 흰색 박스 느낌
              return states.contains(WidgetState.selected)
                  ? Colors.white
                  : Colors.transparent;
            }),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              interest,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.03,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
