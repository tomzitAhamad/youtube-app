import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class YoutubeNavTile extends StatelessWidget {
  const YoutubeNavTile({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width:  12,
            ),
            Expanded(
              child: Text(label,style: TextStyle(
                    color:  AppColors.textPrimary,
                    fontSize: 15,
                    fontWeight: .w600
                    )
                    ),
            ),
            Icon(Icons.chevron_right_rounded,size: 40,color: AppColors.iconMuted,)
          ],
        ),
      ),
    );
  }
}
