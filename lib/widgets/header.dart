import 'package:finance_management_dashboard/constants/constants.dart';
import 'package:finance_management_dashboard/utils/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          if (!Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (Responsive.isMobile(context)) ? 10 : 0),
              child: Text(
                AppStrings.dashboard,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          if (!Responsive.isMobile(context))
            Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
          const Expanded(child: SearchField()),
          const ProfileCard()
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          minRadius: 22,
          backgroundImage: AssetImage(
            AppImages.profilePic,
          ),
        ),
        if (!Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.mattiasNkono,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  AppStrings.mattiasEmail,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: AppColors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

//BUG: Fix the responsiveness issue when turning to tablet
class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.scaffoldBackgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: const EdgeInsets.all(12),
            child: const Row(
              children: [
                Icon(AppMaterialIcons.search),
                SizedBox(width: 10),
                Text(
                  AppStrings.searchHere,
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 16 / 2),
          decoration: const BoxDecoration(
            color: AppColors.scaffoldBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Icon(AppMaterialIcons.notification),
        ),
      ],
    );
  }
}
