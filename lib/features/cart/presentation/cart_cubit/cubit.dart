import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibrahim_project/features/cart/presentation/cart_cubit/states.dart';
import '../../../../constants.dart';
import '../../../../core/utiles/cache_helper.dart';


class CartCubit extends Cubit<CartStates>
{
  CartCubit(): super(InitialCartState());
  static CartCubit get(context) => BlocProvider.of(context);

  void deleteFromLists(int index)async{
    emit(RemoveItemsFromCartState());
    titleList.removeAt(index);
    imageList.removeAt(index);
    authorList.removeAt(index);
    urlList.removeAt(index);
    saveData();
  }

  void saveData(){
      CacheHelper.saveValue(key: 'titleList', value: titleList).then((value){
        emit(SaveTitleCacheHelperState());
      });
      CacheHelper.saveValue(key: 'imageList', value: titleList).then((value){
        emit(SaveImageCacheHelperState());
      });
      CacheHelper.saveValue(key: 'authorList', value: titleList).then((value){
        emit(SaveAuthorCacheHelperState());
      });
      CacheHelper.saveValue(key: 'urlList', value: titleList).then((value){
        emit(SaveUrlCacheHelperState());
      });
  }
}