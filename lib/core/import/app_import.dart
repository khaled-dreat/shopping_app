import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/core/constant/app_images.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/features/checkout/data/model/payment_intent_input_models.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import '../../features/checkout/data/model/ephemeral_key_model/associated_object.dart';
import '../../features/checkout/data/model/m_payment_intent/m_payment_intent.dart';
import '../theme/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

//  ************************ AS & SHOW **************************
import 'package:flutter_stripe/flutter_stripe.dart' as stripe;
import 'package:dartz/dartz.dart' as dartz;
import 'dart:io' show Directory, Platform, SocketException;
import 'dart:developer' as dev;
import 'dart:convert' as convert;
import 'package:path_provider/path_provider.dart' as dir;
import 'package:path/path.dart' as path;
// import 'package:validators/validators.dart' as validators;

//  ************************ App Start **************************
part '../../app_sopping.dart/app_start.dart';

// ! ************************ Core **************************
part "../routes/app_route.dart";
part "../theme/app_theme_choose.dart";
part '../theme/app_theme.dart';
part "../widgets/appbar/custom_appbar.dart";
part '../constant/app_icons.dart';
part '../svg/app_svg.dart';
part '../dime/app_dime.dart';
part '../widgets/buttons/custom_btn.dart';
part '../services/api/api_services.dart';
part '../services/stripe/stripe_service.dart';
part '../services/api/api_key.dart';
part '../services/stripe/stripe_key.dart';
part '../errors/app_failure.dart';
part '../widgets/snackbar/snackbar.dart';
part '../simple_bloc_observer/simple_bloc_observer.dart';
part '../widgets/toast/app_toast.dart';

// ?  ************************ features **************************
//  ************************ Checkout **************************
part '../../features/checkout/presentation/view/my_cart/my_cart_view.dart';
part '../../features/checkout/presentation/view/my_cart/widgets/my_cart_view_body.dart';
part '../../features/checkout/presentation/view/my_cart/widgets/total_price.dart';
part '../../features/checkout/presentation/view/my_cart/widgets/order_info_item.dart';
part '../../features/checkout/presentation/view/payment_details/payment_details_view.dart';
part '../../features/checkout/presentation/view/payment_details/widgets/payment_method_item.dart';
part '../../features/checkout/presentation/view/payment_details/widgets/payment_methods_list_view.dart';
part "../../features/checkout/presentation/view/payment_details/widgets/custom_credit_card.dart";
part "../../features/checkout/presentation/view/payment_details/widgets/payment_details_view_body.dart";
part '../../features/checkout/data/repo/checkout_repo.dart';
part '../../features/checkout/data/repo/checkout_repo_impl.dart';
part '../../features/checkout/presentation/maneg/cubit/payment_cubit.dart';
part '../../features/checkout/presentation/maneg/cubit/payment_state.dart';
part '../../features/checkout/presentation/view/my_cart/widgets/payment_methods_bottom_sheet.dart';
part '../../features/checkout/presentation/view/my_cart/widgets/custom_button_bloc_consumer.dart';
part "../../features/checkout/presentation/view/thank_you/thank_you_view.dart";
part '../../features/checkout/presentation/view/thank_you/widgets/thank_you_view_body.dart';
part '../../features/checkout/presentation/view/thank_you/widgets/thank_you_card.dart';
part "../../features/checkout/presentation/view/thank_you/widgets/payment_info_item.dart";
part "../../features/checkout/presentation/view/thank_you/widgets/card_info_widget.dart";
part "../../features/checkout/presentation/view/thank_you/widgets/custom_dashed_line.dart";
part "../../features/checkout/presentation/view/thank_you/widgets/custom_check_icon.dart";
part "../../features/checkout/data/model/ephemeral_key_model/ephemeral_key_model.dart";
part '../../features/checkout/data/model/init_payment_sheet_input_model.dart';
part "../../features/checkout/presentation/view/my_cart/widgets/custom_bottom_sheet_complete_payment.dart";
part "../../features/checkout/presentation/view/my_cart/widgets/custom_my_card_pricing.dart";

//  ************************ Home **************************
part '../../features/home/presentation/pages/body.dart';
part '../../features/home/presentation/pages/prodects.dart';
part "../../features/home/presentation/pages/prodact_card_design.dart";
part "../../features/home/presentation/pages/popular_prodact.dart";
part '../../features/home/presentation/pages/popular_prodact_card_design.dart';
part "../../features/home/presentation/pages/top_rated_products.dart";
part "../../features/home/presentation/cubit/home_cubit.dart";
part '../../features/home/presentation/cubit/home_state.dart';

//  ************************ View **************************

//  ************************ Products Details **************************
part "../../features/product_details/body.dart";
part "../../features/product_details/widgets/app_bar_product_details.dart";
part "../../features/product_details/prod_details_body.dart";
part "../../features/product_details/heder_img.dart";
part '../../features/product_details/widgets/heder_img_design.dart';
part "../../features/product_details/despacito_pord.dart";
part "../../features/product_details/reviews_section.dart";
part '../../features/product_details/widgets/show_modal_bottom_sheet_order.dart';
part "../../features/product_details/show_modal_bottom_sheet_design.dart";
part '../../features/product_details/reviews.dart';
part '../../features/product_details/prod_more/prod_more.dart';
part "../../features/product_details/prod_more/widgets/descrption_prod_details.dart";
part "../../features/product_details/prod_more/widgets/specification_prod_details.dart";
part "../../features/product_details/prod_more/widgets/review_prod_details.dart";
part "../../features/product_details/bottom_navigtion_bar_prod_details.dart";

//  ************************ login Page **************************
part "../../features/login/body.dart";
part "../../features/login/widgets/app_bar_login.dart";
part "../../features/login/body_logo.dart";

//  ************************ Successfully Order **************************
part "../../features/successfully_order/body.dart";
