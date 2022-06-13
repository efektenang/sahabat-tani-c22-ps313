class BaseResponseModel<T> {
  int? statusCode;
  String? statusMessage;
  T? data;
  bool? isSuccess;

  BaseResponseModel({this.statusCode, this.statusMessage, this.data, this.isSuccess});

  BaseResponseModel.fromJson(Map<String, dynamic> json) {
    statusCode = json.containsKey("status") ? json['status'] : "";
    statusMessage = json.containsKey("message") ? json['message'] : "";
    data = json.containsKey("data") ? json['data'] : null;
    isSuccess = json.containsKey("status") && json['status'] != null && json['status'] == 200
        ? true
        : false;
  }

  @override
  String toString() {
    return "BaseResponseModel("
            "statusCode= $statusCode,"
            "statusMessage = $statusMessage,"
            "data = $data,"
            "success = $isSuccess"
            ")"
        .toString();
  }
}
