/// message : "Successfully Fetched"
/// object : null

/// status : false
/// totalElements : 242
/// totalPages : 9

class Welcome {
  Welcome({
    String? message,
    dynamic object,
    List<Lists>? list,
    bool? status,
    int? totalElements,
    int? totalPages,
  }) {
    _message = message;
    _object = object;
    _list = list;
    _status = status;
    _totalElements = totalElements;
    _totalPages = totalPages;
  }

  Welcome.fromJson(dynamic json) {
    _message = json['message'];
    _object = json['object'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(Lists.fromJson(v));
      });
    }
    _status = json['status'];
    _totalElements = json['totalElements'];
    _totalPages = json['totalPages'];
  }
  String? _message;
  dynamic _object;
  List<Lists>? _list;
  bool? _status;
  int? _totalElements;
  int? _totalPages;
  Welcome copyWith({
    String? message,
    dynamic object,
    List<Lists>? list,
    bool? status,
    int? totalElements,
    int? totalPages,
  }) =>
      Welcome(
        message: message ?? _message,
        object: object ?? _object,
        list: list ?? _list,
        status: status ?? _status,
        totalElements: totalElements ?? _totalElements,
        totalPages: totalPages ?? _totalPages,
      );
  String? get message => _message;
  dynamic get object => _object;
  List<Lists>? get list => _list;
  bool? get status => _status;
  int? get totalElements => _totalElements;
  int? get totalPages => _totalPages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    map['object'] = _object;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['totalElements'] = _totalElements;
    map['totalPages'] = _totalPages;
    return map;
  }
}

/// id : 1
/// name : null
/// updatedBy : null
/// createdBy : null
/// createdDate : "2022-06-09T04:31:11.753+00:00"
/// pageSize : null
/// status : "A"
/// resourceLink : null
/// day : "SUN"
/// startTime : "07:00:00"
/// endTime : "08:30:00"
/// classType : "Lecture"
/// year : "1"
/// specialization : "C[S1] / N[S1]"
/// duration : "1.5"
/// effectiveDate : "2022-02-19T18:15:00.000Z"
/// batchId : null
/// groupDto : null
/// courseDto : null
/// moduleDto : {"id":1,"name":"Programming","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"code":"CS4001NI","teacherName":null}
/// userDto : {"id":19,"name":"Mr. Ujjwal Subedi","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"teacherId":null,"email":null,"contactNumber":null,"attLogId":null,"punchInDateTime":null,"punchOutDateTime":null,"routineId":null,"deviceId":null}
/// roomDto : {"id":1,"name":"Hall - 01","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"roomCode":null,"block":"Kumari"}
/// groupList : [{"id":1,"name":"L1C5","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1C5","courseEntity":null},{"id":2,"name":"L1C6","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1C6","courseEntity":null},{"id":3,"name":"L1C7","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1C7","courseEntity":null},{"id":4,"name":"L1C8","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1C8","courseEntity":null},{"id":5,"name":"L1C9","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1C9","courseEntity":null},{"id":6,"name":"L1C10","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1C10","courseEntity":null},{"id":108,"name":"L1MAD1","updatedBy":null,"createdBy":null,"createdDate":"2022-06-09T04:31:11.753+00:00","pageSize":null,"status":"A","resourceLink":null,"groupCode":"L1MAD1","courseEntity":null}]
/// groups : null
/// courseId : null
/// routineDate : null
/// startTimeResp : null
/// endTimeResp : null
/// teacherDto : null
/// previousRoutineId : null
/// dateOf : null
/// block : null
/// course : null
/// intake : null
/// routineBatch : "Spring Class 2022"

class Lists {
  Lists({
    int? id,
    dynamic name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    String? day,
    String? startTime,
    String? endTime,
    String? classType,
    String? year,
    String? specialization,
    String? duration,
    String? effectiveDate,
    dynamic batchId,
    dynamic groupDto,
    dynamic courseDto,
    ModuleDto? moduleDto,
    UserDto? userDto,
    RoomDto? roomDto,
    List<GroupList>? groupList,
    dynamic groups,
    dynamic courseId,
    dynamic routineDate,
    dynamic startTimeResp,
    dynamic endTimeResp,
    dynamic teacherDto,
    dynamic previousRoutineId,
    dynamic dateOf,
    dynamic block,
    dynamic course,
    dynamic intake,
    String? routineBatch,
  }) {
    _id = id;
    _name = name;
    _updatedBy = updatedBy;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _pageSize = pageSize;
    _status = status;
    _resourceLink = resourceLink;
    _day = day;
    _startTime = startTime;
    _endTime = endTime;
    _classType = classType;
    _year = year;
    _specialization = specialization;
    _duration = duration;
    _effectiveDate = effectiveDate;
    _batchId = batchId;
    _groupDto = groupDto;
    _courseDto = courseDto;
    _moduleDto = moduleDto;
    _userDto = userDto;
    _roomDto = roomDto;
    _groupList = groupList;
    _groups = groups;
    _courseId = courseId;
    _routineDate = routineDate;
    _startTimeResp = startTimeResp;
    _endTimeResp = endTimeResp;
    _teacherDto = teacherDto;
    _previousRoutineId = previousRoutineId;
    _dateOf = dateOf;
    _block = block;
    _course = course;
    _intake = intake;
    _routineBatch = routineBatch;
  }

  Lists.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _updatedBy = json['updatedBy'];
    _createdBy = json['createdBy'];
    _createdDate = json['createdDate'];
    _pageSize = json['pageSize'];
    _status = json['status'];
    _resourceLink = json['resourceLink'];
    _day = json['day'];
    _startTime = json['startTime'];
    _endTime = json['endTime'];
    _classType = json['classType'];
    _year = json['year'];
    _specialization = json['specialization'];
    _duration = json['duration'];
    _effectiveDate = json['effectiveDate'];
    _batchId = json['batchId'];
    _groupDto = json['groupDto'];
    _courseDto = json['courseDto'];
    _moduleDto = json['moduleDto'] != null
        ? ModuleDto.fromJson(json['moduleDto'])
        : null;
    _userDto =
        json['userDto'] != null ? UserDto.fromJson(json['userDto']) : null;
    _roomDto =
        json['roomDto'] != null ? RoomDto.fromJson(json['roomDto']) : null;
    if (json['groupList'] != null) {
      _groupList = [];
      json['groupList'].forEach((v) {
        _groupList?.add(GroupList.fromJson(v));
      });
    }
    _groups = json['groups'];
    _courseId = json['courseId'];
    _routineDate = json['routineDate'];
    _startTimeResp = json['startTimeResp'];
    _endTimeResp = json['endTimeResp'];
    _teacherDto = json['teacherDto'];
    _previousRoutineId = json['previousRoutineId'];
    _dateOf = json['dateOf'];
    _block = json['block'];
    _course = json['course'];
    _intake = json['intake'];
    _routineBatch = json['routineBatch'];
  }
  int? _id;
  dynamic _name;
  dynamic _updatedBy;
  dynamic _createdBy;
  String? _createdDate;
  dynamic _pageSize;
  String? _status;
  dynamic _resourceLink;
  String? _day;
  String? _startTime;
  String? _endTime;
  String? _classType;
  String? _year;
  String? _specialization;
  String? _duration;
  String? _effectiveDate;
  dynamic _batchId;
  dynamic _groupDto;
  dynamic _courseDto;
  ModuleDto? _moduleDto;
  UserDto? _userDto;
  RoomDto? _roomDto;
  List<GroupList>? _groupList;
  dynamic _groups;
  dynamic _courseId;
  dynamic _routineDate;
  dynamic _startTimeResp;
  dynamic _endTimeResp;
  dynamic _teacherDto;
  dynamic _previousRoutineId;
  dynamic _dateOf;
  dynamic _block;
  dynamic _course;
  dynamic _intake;
  String? _routineBatch;
  Lists copyWith({
    int? id,
    dynamic name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    String? day,
    String? startTime,
    String? endTime,
    String? classType,
    String? year,
    String? specialization,
    String? duration,
    String? effectiveDate,
    dynamic batchId,
    dynamic groupDto,
    dynamic courseDto,
    ModuleDto? moduleDto,
    UserDto? userDto,
    RoomDto? roomDto,
    List<GroupList>? groupList,
    dynamic groups,
    dynamic courseId,
    dynamic routineDate,
    dynamic startTimeResp,
    dynamic endTimeResp,
    dynamic teacherDto,
    dynamic previousRoutineId,
    dynamic dateOf,
    dynamic block,
    dynamic course,
    dynamic intake,
    String? routineBatch,
  }) =>
      Lists(
        id: id ?? _id,
        name: name ?? _name,
        updatedBy: updatedBy ?? _updatedBy,
        createdBy: createdBy ?? _createdBy,
        createdDate: createdDate ?? _createdDate,
        pageSize: pageSize ?? _pageSize,
        status: status ?? _status,
        resourceLink: resourceLink ?? _resourceLink,
        day: day ?? _day,
        startTime: startTime ?? _startTime,
        endTime: endTime ?? _endTime,
        classType: classType ?? _classType,
        year: year ?? _year,
        specialization: specialization ?? _specialization,
        duration: duration ?? _duration,
        effectiveDate: effectiveDate ?? _effectiveDate,
        batchId: batchId ?? _batchId,
        groupDto: groupDto ?? _groupDto,
        courseDto: courseDto ?? _courseDto,
        moduleDto: moduleDto ?? _moduleDto,
        userDto: userDto ?? _userDto,
        roomDto: roomDto ?? _roomDto,
        groupList: groupList ?? _groupList,
        groups: groups ?? _groups,
        courseId: courseId ?? _courseId,
        routineDate: routineDate ?? _routineDate,
        startTimeResp: startTimeResp ?? _startTimeResp,
        endTimeResp: endTimeResp ?? _endTimeResp,
        teacherDto: teacherDto ?? _teacherDto,
        previousRoutineId: previousRoutineId ?? _previousRoutineId,
        dateOf: dateOf ?? _dateOf,
        block: block ?? _block,
        course: course ?? _course,
        intake: intake ?? _intake,
        routineBatch: routineBatch ?? _routineBatch,
      );
  int? get id => _id;
  dynamic get name => _name;
  dynamic get updatedBy => _updatedBy;
  dynamic get createdBy => _createdBy;
  String? get createdDate => _createdDate;
  dynamic get pageSize => _pageSize;
  String? get status => _status;
  dynamic get resourceLink => _resourceLink;
  String? get day => _day;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  String? get classType => _classType;
  String? get year => _year;
  String? get specialization => _specialization;
  String? get duration => _duration;
  String? get effectiveDate => _effectiveDate;
  dynamic get batchId => _batchId;
  dynamic get groupDto => _groupDto;
  dynamic get courseDto => _courseDto;
  ModuleDto? get moduleDto => _moduleDto;
  UserDto? get userDto => _userDto;
  RoomDto? get roomDto => _roomDto;
  List<GroupList>? get groupList => _groupList;
  dynamic get groups => _groups;
  dynamic get courseId => _courseId;
  dynamic get routineDate => _routineDate;
  dynamic get startTimeResp => _startTimeResp;
  dynamic get endTimeResp => _endTimeResp;
  dynamic get teacherDto => _teacherDto;
  dynamic get previousRoutineId => _previousRoutineId;
  dynamic get dateOf => _dateOf;
  dynamic get block => _block;
  dynamic get course => _course;
  dynamic get intake => _intake;
  String? get routineBatch => _routineBatch;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['updatedBy'] = _updatedBy;
    map['createdBy'] = _createdBy;
    map['createdDate'] = _createdDate;
    map['pageSize'] = _pageSize;
    map['status'] = _status;
    map['resourceLink'] = _resourceLink;
    map['day'] = _day;
    map['startTime'] = _startTime;
    map['endTime'] = _endTime;
    map['classType'] = _classType;
    map['year'] = _year;
    map['specialization'] = _specialization;
    map['duration'] = _duration;
    map['effectiveDate'] = _effectiveDate;
    map['batchId'] = _batchId;
    map['groupDto'] = _groupDto;
    map['courseDto'] = _courseDto;
    if (_moduleDto != null) {
      map['moduleDto'] = _moduleDto?.toJson();
    }
    if (_userDto != null) {
      map['userDto'] = _userDto?.toJson();
    }
    if (_roomDto != null) {
      map['roomDto'] = _roomDto?.toJson();
    }
    if (_groupList != null) {
      map['groupList'] = _groupList?.map((v) => v.toJson()).toList();
    }
    map['groups'] = _groups;
    map['courseId'] = _courseId;
    map['routineDate'] = _routineDate;
    map['startTimeResp'] = _startTimeResp;
    map['endTimeResp'] = _endTimeResp;
    map['teacherDto'] = _teacherDto;
    map['previousRoutineId'] = _previousRoutineId;
    map['dateOf'] = _dateOf;
    map['block'] = _block;
    map['course'] = _course;
    map['intake'] = _intake;
    map['routineBatch'] = _routineBatch;
    return map;
  }
}

/// id : 1
/// name : "L1C5"
/// updatedBy : null
/// createdBy : null
/// createdDate : "2022-06-09T04:31:11.753+00:00"
/// pageSize : null
/// status : "A"
/// resourceLink : null
/// groupCode : "L1C5"
/// courseEntity : null

class GroupList {
  GroupList({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    String? groupCode,
    dynamic courseEntity,
  }) {
    _id = id;
    _name = name;
    _updatedBy = updatedBy;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _pageSize = pageSize;
    _status = status;
    _resourceLink = resourceLink;
    _groupCode = groupCode;
    _courseEntity = courseEntity;
  }

  GroupList.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _updatedBy = json['updatedBy'];
    _createdBy = json['createdBy'];
    _createdDate = json['createdDate'];
    _pageSize = json['pageSize'];
    _status = json['status'];
    _resourceLink = json['resourceLink'];
    _groupCode = json['groupCode'];
    _courseEntity = json['courseEntity'];
  }
  int? _id;
  String? _name;
  dynamic _updatedBy;
  dynamic _createdBy;
  String? _createdDate;
  dynamic _pageSize;
  String? _status;
  dynamic _resourceLink;
  String? _groupCode;
  dynamic _courseEntity;
  GroupList copyWith({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    String? groupCode,
    dynamic courseEntity,
  }) =>
      GroupList(
        id: id ?? _id,
        name: name ?? _name,
        updatedBy: updatedBy ?? _updatedBy,
        createdBy: createdBy ?? _createdBy,
        createdDate: createdDate ?? _createdDate,
        pageSize: pageSize ?? _pageSize,
        status: status ?? _status,
        resourceLink: resourceLink ?? _resourceLink,
        groupCode: groupCode ?? _groupCode,
        courseEntity: courseEntity ?? _courseEntity,
      );
  int? get id => _id;
  String? get name => _name;
  dynamic get updatedBy => _updatedBy;
  dynamic get createdBy => _createdBy;
  String? get createdDate => _createdDate;
  dynamic get pageSize => _pageSize;
  String? get status => _status;
  dynamic get resourceLink => _resourceLink;
  String? get groupCode => _groupCode;
  dynamic get courseEntity => _courseEntity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['updatedBy'] = _updatedBy;
    map['createdBy'] = _createdBy;
    map['createdDate'] = _createdDate;
    map['pageSize'] = _pageSize;
    map['status'] = _status;
    map['resourceLink'] = _resourceLink;
    map['groupCode'] = _groupCode;
    map['courseEntity'] = _courseEntity;
    return map;
  }
}

/// id : 1
/// name : "Hall - 01"
/// updatedBy : null
/// createdBy : null
/// createdDate : "2022-06-09T04:31:11.753+00:00"
/// pageSize : null
/// status : "A"
/// resourceLink : null
/// roomCode : null
/// block : "Kumari"

class RoomDto {
  RoomDto({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    dynamic roomCode,
    String? block,
  }) {
    _id = id;
    _name = name;
    _updatedBy = updatedBy;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _pageSize = pageSize;
    _status = status;
    _resourceLink = resourceLink;
    _roomCode = roomCode;
    _block = block;
  }

  RoomDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _updatedBy = json['updatedBy'];
    _createdBy = json['createdBy'];
    _createdDate = json['createdDate'];
    _pageSize = json['pageSize'];
    _status = json['status'];
    _resourceLink = json['resourceLink'];
    _roomCode = json['roomCode'];
    _block = json['block'];
  }
  int? _id;
  String? _name;
  dynamic _updatedBy;
  dynamic _createdBy;
  String? _createdDate;
  dynamic _pageSize;
  String? _status;
  dynamic _resourceLink;
  dynamic _roomCode;
  String? _block;
  RoomDto copyWith({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    dynamic roomCode,
    String? block,
  }) =>
      RoomDto(
        id: id ?? _id,
        name: name ?? _name,
        updatedBy: updatedBy ?? _updatedBy,
        createdBy: createdBy ?? _createdBy,
        createdDate: createdDate ?? _createdDate,
        pageSize: pageSize ?? _pageSize,
        status: status ?? _status,
        resourceLink: resourceLink ?? _resourceLink,
        roomCode: roomCode ?? _roomCode,
        block: block ?? _block,
      );
  int? get id => _id;
  String? get name => _name;
  dynamic get updatedBy => _updatedBy;
  dynamic get createdBy => _createdBy;
  String? get createdDate => _createdDate;
  dynamic get pageSize => _pageSize;
  String? get status => _status;
  dynamic get resourceLink => _resourceLink;
  dynamic get roomCode => _roomCode;
  String? get block => _block;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['updatedBy'] = _updatedBy;
    map['createdBy'] = _createdBy;
    map['createdDate'] = _createdDate;
    map['pageSize'] = _pageSize;
    map['status'] = _status;
    map['resourceLink'] = _resourceLink;
    map['roomCode'] = _roomCode;
    map['block'] = _block;
    return map;
  }
}

/// id : 19
/// name : "Mr. Ujjwal Subedi"
/// updatedBy : null
/// createdBy : null
/// createdDate : "2022-06-09T04:31:11.753+00:00"
/// pageSize : null
/// status : "A"
/// resourceLink : null
/// teacherId : null
/// email : null
/// contactNumber : null
/// attLogId : null
/// punchInDateTime : null
/// punchOutDateTime : null
/// routineId : null
/// deviceId : null

class UserDto {
  UserDto({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    dynamic teacherId,
    dynamic email,
    dynamic contactNumber,
    dynamic attLogId,
    dynamic punchInDateTime,
    dynamic punchOutDateTime,
    dynamic routineId,
    dynamic deviceId,
  }) {
    _id = id;
    _name = name;
    _updatedBy = updatedBy;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _pageSize = pageSize;
    _status = status;
    _resourceLink = resourceLink;
    _teacherId = teacherId;
    _email = email;
    _contactNumber = contactNumber;
    _attLogId = attLogId;
    _punchInDateTime = punchInDateTime;
    _punchOutDateTime = punchOutDateTime;
    _routineId = routineId;
    _deviceId = deviceId;
  }

  UserDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _updatedBy = json['updatedBy'];
    _createdBy = json['createdBy'];
    _createdDate = json['createdDate'];
    _pageSize = json['pageSize'];
    _status = json['status'];
    _resourceLink = json['resourceLink'];
    _teacherId = json['teacherId'];
    _email = json['email'];
    _contactNumber = json['contactNumber'];
    _attLogId = json['attLogId'];
    _punchInDateTime = json['punchInDateTime'];
    _punchOutDateTime = json['punchOutDateTime'];
    _routineId = json['routineId'];
    _deviceId = json['deviceId'];
  }
  int? _id;
  String? _name;
  dynamic _updatedBy;
  dynamic _createdBy;
  String? _createdDate;
  dynamic _pageSize;
  String? _status;
  dynamic _resourceLink;
  dynamic _teacherId;
  dynamic _email;
  dynamic _contactNumber;
  dynamic _attLogId;
  dynamic _punchInDateTime;
  dynamic _punchOutDateTime;
  dynamic _routineId;
  dynamic _deviceId;
  UserDto copyWith({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    dynamic teacherId,
    dynamic email,
    dynamic contactNumber,
    dynamic attLogId,
    dynamic punchInDateTime,
    dynamic punchOutDateTime,
    dynamic routineId,
    dynamic deviceId,
  }) =>
      UserDto(
        id: id ?? _id,
        name: name ?? _name,
        updatedBy: updatedBy ?? _updatedBy,
        createdBy: createdBy ?? _createdBy,
        createdDate: createdDate ?? _createdDate,
        pageSize: pageSize ?? _pageSize,
        status: status ?? _status,
        resourceLink: resourceLink ?? _resourceLink,
        teacherId: teacherId ?? _teacherId,
        email: email ?? _email,
        contactNumber: contactNumber ?? _contactNumber,
        attLogId: attLogId ?? _attLogId,
        punchInDateTime: punchInDateTime ?? _punchInDateTime,
        punchOutDateTime: punchOutDateTime ?? _punchOutDateTime,
        routineId: routineId ?? _routineId,
        deviceId: deviceId ?? _deviceId,
      );
  int? get id => _id;
  String? get name => _name;
  dynamic get updatedBy => _updatedBy;
  dynamic get createdBy => _createdBy;
  String? get createdDate => _createdDate;
  dynamic get pageSize => _pageSize;
  String? get status => _status;
  dynamic get resourceLink => _resourceLink;
  dynamic get teacherId => _teacherId;
  dynamic get email => _email;
  dynamic get contactNumber => _contactNumber;
  dynamic get attLogId => _attLogId;
  dynamic get punchInDateTime => _punchInDateTime;
  dynamic get punchOutDateTime => _punchOutDateTime;
  dynamic get routineId => _routineId;
  dynamic get deviceId => _deviceId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['updatedBy'] = _updatedBy;
    map['createdBy'] = _createdBy;
    map['createdDate'] = _createdDate;
    map['pageSize'] = _pageSize;
    map['status'] = _status;
    map['resourceLink'] = _resourceLink;
    map['teacherId'] = _teacherId;
    map['email'] = _email;
    map['contactNumber'] = _contactNumber;
    map['attLogId'] = _attLogId;
    map['punchInDateTime'] = _punchInDateTime;
    map['punchOutDateTime'] = _punchOutDateTime;
    map['routineId'] = _routineId;
    map['deviceId'] = _deviceId;
    return map;
  }
}

/// id : 1
/// name : "Programming"
/// updatedBy : null
/// createdBy : null
/// createdDate : "2022-06-09T04:31:11.753+00:00"
/// pageSize : null
/// status : "A"
/// resourceLink : null
/// code : "CS4001NI"
/// teacherName : null

class ModuleDto {
  ModuleDto({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    String? code,
    dynamic teacherName,
  }) {
    _id = id;
    _name = name;
    _updatedBy = updatedBy;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _pageSize = pageSize;
    _status = status;
    _resourceLink = resourceLink;
    _code = code;
    _teacherName = teacherName;
  }

  ModuleDto.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _updatedBy = json['updatedBy'];
    _createdBy = json['createdBy'];
    _createdDate = json['createdDate'];
    _pageSize = json['pageSize'];
    _status = json['status'];
    _resourceLink = json['resourceLink'];
    _code = json['code'];
    _teacherName = json['teacherName'];
  }
  int? _id;
  String? _name;
  dynamic _updatedBy;
  dynamic _createdBy;
  String? _createdDate;
  dynamic _pageSize;
  String? _status;
  dynamic _resourceLink;
  String? _code;
  dynamic _teacherName;
  ModuleDto copyWith({
    int? id,
    String? name,
    dynamic updatedBy,
    dynamic createdBy,
    String? createdDate,
    dynamic pageSize,
    String? status,
    dynamic resourceLink,
    String? code,
    dynamic teacherName,
  }) =>
      ModuleDto(
        id: id ?? _id,
        name: name ?? _name,
        updatedBy: updatedBy ?? _updatedBy,
        createdBy: createdBy ?? _createdBy,
        createdDate: createdDate ?? _createdDate,
        pageSize: pageSize ?? _pageSize,
        status: status ?? _status,
        resourceLink: resourceLink ?? _resourceLink,
        code: code ?? _code,
        teacherName: teacherName ?? _teacherName,
      );
  int? get id => _id;
  String? get name => _name;
  dynamic get updatedBy => _updatedBy;
  dynamic get createdBy => _createdBy;
  String? get createdDate => _createdDate;
  dynamic get pageSize => _pageSize;
  String? get status => _status;
  dynamic get resourceLink => _resourceLink;
  String? get code => _code;
  dynamic get teacherName => _teacherName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['updatedBy'] = _updatedBy;
    map['createdBy'] = _createdBy;
    map['createdDate'] = _createdDate;
    map['pageSize'] = _pageSize;
    map['status'] = _status;
    map['resourceLink'] = _resourceLink;
    map['code'] = _code;
    map['teacherName'] = _teacherName;
    return map;
  }
}
