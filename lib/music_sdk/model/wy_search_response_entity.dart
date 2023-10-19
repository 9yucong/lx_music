import 'package:lx_music/generated/json/base/json_field.dart';
import 'package:lx_music/generated/json/wy_search_response_entity.g.dart';
import 'dart:convert';
export 'package:lx_music/generated/json/wy_search_response_entity.g.dart';

@JsonSerializable()
class WySearchResponseEntity {
	WySearchResponseResult? result;
	int? code = 0;

	WySearchResponseEntity();

	factory WySearchResponseEntity.fromJson(Map<String, dynamic> json) => $WySearchResponseEntityFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResult {
	dynamic searchQcReminder;
	List<WySearchResponseResultSongs>? songs = [];
	int? songCount = 0;

	WySearchResponseResult();

	factory WySearchResponseResult.fromJson(Map<String, dynamic> json) => $WySearchResponseResultFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongs {
	String? name = '';
	int? id = 0;
	int? pst = 0;
	int? t = 0;
	List<WySearchResponseResultSongsAr>? ar = [];
	List<String>? alia = [];
	double? pop;
	int? st = 0;
	String? rt = '';
	int? fee = 0;
	int? v = 0;
	dynamic crbt;
	String? cf = '';
	WySearchResponseResultSongsAl? al;
	int? dt = 0;
	WySearchResponseResultSongsH? h;
	WySearchResponseResultSongsM? m;
	WySearchResponseResultSongsL? l;
	WySearchResponseResultSongsSq? sq;
	dynamic hr;
	dynamic a;
	String? cd = '';
	int? no = 0;
	dynamic rtUrl;
	int? ftype = 0;
	List<dynamic>? rtUrls = [];
	int? djId = 0;
	int? copyright = 0;
	@JSONField(name: "s_id")
	int? sId = 0;
	int? mark = 0;
	int? originCoverType = 0;
	dynamic originSongSimpleData;
	dynamic tagPicList;
	bool? resourceState = false;
	int? version = 0;
	dynamic songJumpInfo;
	dynamic entertainmentTags;
	int? single = 0;
	dynamic noCopyrightRcmd;
	int? mst = 0;
	int? cp = 0;
	int? mv = 0;
	int? rtype = 0;
	dynamic rurl;
	int? publishTime = 0;
	List<String>? tns = [];
	WySearchResponseResultSongsPrivilege? privilege;

	WySearchResponseResultSongs();

	factory WySearchResponseResultSongs.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsAr {
	int? id = 0;
	String? name = '';
	List<String>? tns = [];
	List<dynamic>? alias = [];

	WySearchResponseResultSongsAr();

	factory WySearchResponseResultSongsAr.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsArFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsArToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsAl {
	int? id = 0;
	String? name = '';
	String? picUrl = '';
	List<dynamic>? tns = [];
	@JSONField(name: "pic_str")
	String? picStr = '';
	int? pic = 0;

	WySearchResponseResultSongsAl();

	factory WySearchResponseResultSongsAl.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsAlFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsAlToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsH {
	int? br = 0;
	int? fid = 0;
	int? size = 0;
	double? vd;
	int? sr = 0;

	WySearchResponseResultSongsH();

	factory WySearchResponseResultSongsH.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsHFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsHToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsM {
	int? br = 0;
	int? fid = 0;
	int? size = 0;
	double? vd;
	int? sr = 0;

	WySearchResponseResultSongsM();

	factory WySearchResponseResultSongsM.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsMFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsMToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsL {
	int? br = 0;
	int? fid = 0;
	int? size = 0;
	double? vd;
	int? sr = 0;

	WySearchResponseResultSongsL();

	factory WySearchResponseResultSongsL.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsLFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsLToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsSq {
	int? br = 0;
	int? fid = 0;
	int? size = 0;
	double? vd;
	int? sr = 0;

	WySearchResponseResultSongsSq();

	factory WySearchResponseResultSongsSq.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsSqFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsSqToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsPrivilege {
	int? id = 0;
	int? fee = 0;
	int? payed = 0;
	int? st = 0;
	int? pl = 0;
	int? dl = 0;
	int? sp = 0;
	int? cp = 0;
	int? subp = 0;
	bool? cs = false;
	int? maxbr = 0;
	int? fl = 0;
	bool? toast = false;
	int? flag = 0;
	bool? preSell = false;
	int? playMaxbr = 0;
	int? downloadMaxbr = 0;
	String? maxBrLevel = '';
	String? playMaxBrLevel = '';
	String? downloadMaxBrLevel = '';
	String? plLevel = '';
	String? dlLevel = '';
	String? flLevel = '';
	dynamic rscl;
	WySearchResponseResultSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege;
	int? rightSource = 0;
	List<WySearchResponseResultSongsPrivilegeChargeInfoList>? chargeInfoList = [];

	WySearchResponseResultSongsPrivilege();

	factory WySearchResponseResultSongsPrivilege.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsPrivilegeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsPrivilegeFreeTrialPrivilege {
	bool? resConsumable = false;
	bool? userConsumable = false;
	dynamic listenType;
	dynamic cannotListenReason;

	WySearchResponseResultSongsPrivilegeFreeTrialPrivilege();

	factory WySearchResponseResultSongsPrivilegeFreeTrialPrivilege.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsPrivilegeFreeTrialPrivilegeFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsPrivilegeFreeTrialPrivilegeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class WySearchResponseResultSongsPrivilegeChargeInfoList {
	int? rate = 0;
	dynamic chargeUrl;
	dynamic chargeMessage;
	int? chargeType = 0;

	WySearchResponseResultSongsPrivilegeChargeInfoList();

	factory WySearchResponseResultSongsPrivilegeChargeInfoList.fromJson(Map<String, dynamic> json) => $WySearchResponseResultSongsPrivilegeChargeInfoListFromJson(json);

	Map<String, dynamic> toJson() => $WySearchResponseResultSongsPrivilegeChargeInfoListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}