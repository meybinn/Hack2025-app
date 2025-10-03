import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget{
  
  final Color color;
  final String titleKo;
  final String titleEn;
  final List<String> bullets;
  final String? iconAsset;
  final VoidCallback? onTap;

  const LevelCard({
    super.key, 
    required this.color, 
    required this.titleKo, 
    required this.titleEn, 
    required this.bullets, 
    this.iconAsset, 
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = Colors.white;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.18),
                borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                child: iconAsset == null
                ? const Icon(Icons.book_rounded,
                size: 38,
                color: Colors.white,)
                : Image.asset(
                  iconAsset!,
                  width: 44,
                  height: 44,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 16,
              ),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleKo,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                        height: 1.05,
                      ),
                    ),
                    Text(
                      titleEn,
                      style: TextStyle(
                        color: textColor.withOpacity(0.9),
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Wrap(
                      spacing: 14,
                      runSpacing: 4,
                      children: 
                        bullets.map((b) => Text(
                          b,
                          style: TextStyle(
                            color: textColor.withOpacity(0.95),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          ))
                          .toList()
                          .expand((w) => [
                            w, 
                            Text(
                              '・',
                              style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ))                 
                          ])
                          .toList()
                          ..removeLast(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}