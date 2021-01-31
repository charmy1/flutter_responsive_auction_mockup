import 'errors.dart';



class FailureMessages {
  String mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return "Server Error";
      case CacheFailure:
        return "No data found";
      case CancelledByUserFailure:
        return "Cancelled by user";
      case InvalidEmailFailure:
        return "Lütfen mail adresinizi kontrol ediniz";
      case InvalidEmailPassFailure:
        return"Lütfen geçerli bir mail adresi giriniz";
      case InvalidPasswordFailure:
        return "Şifreyi Giriniz";
      case NoInternetFailure:
        return "No Internet Connection";
      case NoDataFailure:
        return "No Data Failure";
      case CheckBoxFailure:
        return "Lütfen Sözleşmeyi okuyup onaylayınız";
      default:
        return 'Unexpected error';
    }
  }
}
