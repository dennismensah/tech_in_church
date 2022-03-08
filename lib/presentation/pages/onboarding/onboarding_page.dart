import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/home/home_bloc.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/home/home_page.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final captions = [
      'Pay your offering',
      'Chat with church counselors',
      'Watch service online',
      'Partake in church polls'
    ];
    final images = [
      'assets/images/on1.jpg',
      'assets/images/on2.jpg',
      'assets/images/on3.jpg',
      'assets/images/on4.jpg'
    ];
    final controller = useState(SwiperController());
    final index = useState(0);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Swiper(
                  control: const SwiperControl(disableColor: Colors.grey,iconNext: null,iconPrevious: null),
                  onIndexChanged: (i) {
                    index.value = i;
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.value,
                  itemBuilder: (BuildContext context, int i) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(images[i]),
                        ),
                      ),
                    );
                  },
                  itemCount: 4,
                  pagination: const SwiperPagination(),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        captions[index.value],
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          index.value == 3
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 1.sw,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith(
                            (states) => const EdgeInsets.all(10.0)),
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => AppColors.appColor,
                        ),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        textStyle: MaterialStateProperty.resolveWith(
                          (states) => TextStyle(fontSize: 18.sp),
                        ),
                      ),
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.authCheckRequested());
                        context
                            .read<HomeBloc>()
                            .add(const HomeEvent.homeItemsFetched());
                        context.router.push(HomeRoute());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text('Get Started'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.resolveWith(
                                (states) => const EdgeInsets.all(10.0)),
                            side: MaterialStateProperty.resolveWith(
                              (states) => const BorderSide(
                                color: Colors
                                    .white /*Color.fromRGBO(65, 29, 75, 1)*/,
                              ),
                            ),
                            shape: MaterialStateProperty.resolveWith(
                              (states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            textStyle: MaterialStateProperty.resolveWith(
                              (states) => TextStyle(
                                fontSize: 18.sp,
                                color: Color.fromRGBO(65, 29, 75, 1),
                              ),
                            ),
                          ),
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEvent.authCheckRequested());
                            context
                                .read<HomeBloc>()
                                .add(const HomeEvent.homeItemsFetched());
                            context.router.replace(const HomeRoute());
                          },
                          child: const Text('Skip'),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.resolveWith(
                                (states) => const EdgeInsets.all(10.0)),
                            backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => AppColors.appColor,
                            ),
                            shape: MaterialStateProperty.resolveWith(
                              (states) => RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            textStyle: MaterialStateProperty.resolveWith(
                              (states) => TextStyle(fontSize: 18.sp),
                            ),
                          ),
                          onPressed: () {
                            controller.value.next();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Next'),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
