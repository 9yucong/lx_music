import 'package:lx_music/generated/json/base/json_convert_content.dart';
import 'package:lx_music/music_sdk/model/wy_search_response_entity.dart';

WySearchResponseEntity $WySearchResponseEntityFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseEntity wySearchResponseEntity = WySearchResponseEntity();
  final WySearchResponseResult? result = jsonConvert.convert<
      WySearchResponseResult>(json['result']);
  if (result != null) {
    wySearchResponseEntity.result = result;
  }
  final int? code = jsonConvert.convert<int>(json['code']);
  if (code != null) {
    wySearchResponseEntity.code = code;
  }
  return wySearchResponseEntity;
}

Map<String, dynamic> $WySearchResponseEntityToJson(
    WySearchResponseEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['result'] = entity.result?.toJson();
  data['code'] = entity.code;
  return data;
}

extension WySearchResponseEntityExtension on WySearchResponseEntity {
  WySearchResponseEntity copyWith({
    WySearchResponseResult? result,
    int? code,
  }) {
    return WySearchResponseEntity()
      ..result = result ?? this.result
      ..code = code ?? this.code;
  }
}

WySearchResponseResult $WySearchResponseResultFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResult wySearchResponseResult = WySearchResponseResult();
  final dynamic searchQcReminder = json['searchQcReminder'];
  if (searchQcReminder != null) {
    wySearchResponseResult.searchQcReminder = searchQcReminder;
  }
  final List<WySearchResponseResultSongs>? songs = (json['songs'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<WySearchResponseResultSongs>(
          e) as WySearchResponseResultSongs).toList();
  if (songs != null) {
    wySearchResponseResult.songs = songs;
  }
  final int? songCount = jsonConvert.convert<int>(json['songCount']);
  if (songCount != null) {
    wySearchResponseResult.songCount = songCount;
  }
  return wySearchResponseResult;
}

Map<String, dynamic> $WySearchResponseResultToJson(
    WySearchResponseResult entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['searchQcReminder'] = entity.searchQcReminder;
  data['songs'] = entity.songs?.map((v) => v.toJson()).toList();
  data['songCount'] = entity.songCount;
  return data;
}

extension WySearchResponseResultExtension on WySearchResponseResult {
  WySearchResponseResult copyWith({
    dynamic searchQcReminder,
    List<WySearchResponseResultSongs>? songs,
    int? songCount,
  }) {
    return WySearchResponseResult()
      ..searchQcReminder = searchQcReminder ?? this.searchQcReminder
      ..songs = songs ?? this.songs
      ..songCount = songCount ?? this.songCount;
  }
}

WySearchResponseResultSongs $WySearchResponseResultSongsFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongs wySearchResponseResultSongs = WySearchResponseResultSongs();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    wySearchResponseResultSongs.name = name;
  }
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    wySearchResponseResultSongs.id = id;
  }
  final int? pst = jsonConvert.convert<int>(json['pst']);
  if (pst != null) {
    wySearchResponseResultSongs.pst = pst;
  }
  final int? t = jsonConvert.convert<int>(json['t']);
  if (t != null) {
    wySearchResponseResultSongs.t = t;
  }
  final List<WySearchResponseResultSongsAr>? ar = (json['ar'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<WySearchResponseResultSongsAr>(
          e) as WySearchResponseResultSongsAr)
      .toList();
  if (ar != null) {
    wySearchResponseResultSongs.ar = ar;
  }
  final List<String>? alia = (json['alia'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (alia != null) {
    wySearchResponseResultSongs.alia = alia;
  }
  final double? pop = jsonConvert.convert<double>(json['pop']);
  if (pop != null) {
    wySearchResponseResultSongs.pop = pop;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    wySearchResponseResultSongs.st = st;
  }
  final String? rt = jsonConvert.convert<String>(json['rt']);
  if (rt != null) {
    wySearchResponseResultSongs.rt = rt;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    wySearchResponseResultSongs.fee = fee;
  }
  final int? v = jsonConvert.convert<int>(json['v']);
  if (v != null) {
    wySearchResponseResultSongs.v = v;
  }
  final dynamic crbt = json['crbt'];
  if (crbt != null) {
    wySearchResponseResultSongs.crbt = crbt;
  }
  final String? cf = jsonConvert.convert<String>(json['cf']);
  if (cf != null) {
    wySearchResponseResultSongs.cf = cf;
  }
  final WySearchResponseResultSongsAl? al = jsonConvert.convert<
      WySearchResponseResultSongsAl>(json['al']);
  if (al != null) {
    wySearchResponseResultSongs.al = al;
  }
  final int? dt = jsonConvert.convert<int>(json['dt']);
  if (dt != null) {
    wySearchResponseResultSongs.dt = dt;
  }
  final WySearchResponseResultSongsH? h = jsonConvert.convert<
      WySearchResponseResultSongsH>(json['h']);
  if (h != null) {
    wySearchResponseResultSongs.h = h;
  }
  final WySearchResponseResultSongsM? m = jsonConvert.convert<
      WySearchResponseResultSongsM>(json['m']);
  if (m != null) {
    wySearchResponseResultSongs.m = m;
  }
  final WySearchResponseResultSongsL? l = jsonConvert.convert<
      WySearchResponseResultSongsL>(json['l']);
  if (l != null) {
    wySearchResponseResultSongs.l = l;
  }
  final WySearchResponseResultSongsSq? sq = jsonConvert.convert<
      WySearchResponseResultSongsSq>(json['sq']);
  if (sq != null) {
    wySearchResponseResultSongs.sq = sq;
  }
  final dynamic hr = json['hr'];
  if (hr != null) {
    wySearchResponseResultSongs.hr = hr;
  }
  final dynamic a = json['a'];
  if (a != null) {
    wySearchResponseResultSongs.a = a;
  }
  final String? cd = jsonConvert.convert<String>(json['cd']);
  if (cd != null) {
    wySearchResponseResultSongs.cd = cd;
  }
  final int? no = jsonConvert.convert<int>(json['no']);
  if (no != null) {
    wySearchResponseResultSongs.no = no;
  }
  final dynamic rtUrl = json['rtUrl'];
  if (rtUrl != null) {
    wySearchResponseResultSongs.rtUrl = rtUrl;
  }
  final int? ftype = jsonConvert.convert<int>(json['ftype']);
  if (ftype != null) {
    wySearchResponseResultSongs.ftype = ftype;
  }
  final List<dynamic>? rtUrls = (json['rtUrls'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (rtUrls != null) {
    wySearchResponseResultSongs.rtUrls = rtUrls;
  }
  final int? djId = jsonConvert.convert<int>(json['djId']);
  if (djId != null) {
    wySearchResponseResultSongs.djId = djId;
  }
  final int? copyright = jsonConvert.convert<int>(json['copyright']);
  if (copyright != null) {
    wySearchResponseResultSongs.copyright = copyright;
  }
  final int? sId = jsonConvert.convert<int>(json['s_id']);
  if (sId != null) {
    wySearchResponseResultSongs.sId = sId;
  }
  final int? mark = jsonConvert.convert<int>(json['mark']);
  if (mark != null) {
    wySearchResponseResultSongs.mark = mark;
  }
  final int? originCoverType = jsonConvert.convert<int>(
      json['originCoverType']);
  if (originCoverType != null) {
    wySearchResponseResultSongs.originCoverType = originCoverType;
  }
  final dynamic originSongSimpleData = json['originSongSimpleData'];
  if (originSongSimpleData != null) {
    wySearchResponseResultSongs.originSongSimpleData = originSongSimpleData;
  }
  final dynamic tagPicList = json['tagPicList'];
  if (tagPicList != null) {
    wySearchResponseResultSongs.tagPicList = tagPicList;
  }
  final bool? resourceState = jsonConvert.convert<bool>(json['resourceState']);
  if (resourceState != null) {
    wySearchResponseResultSongs.resourceState = resourceState;
  }
  final int? version = jsonConvert.convert<int>(json['version']);
  if (version != null) {
    wySearchResponseResultSongs.version = version;
  }
  final dynamic songJumpInfo = json['songJumpInfo'];
  if (songJumpInfo != null) {
    wySearchResponseResultSongs.songJumpInfo = songJumpInfo;
  }
  final dynamic entertainmentTags = json['entertainmentTags'];
  if (entertainmentTags != null) {
    wySearchResponseResultSongs.entertainmentTags = entertainmentTags;
  }
  final int? single = jsonConvert.convert<int>(json['single']);
  if (single != null) {
    wySearchResponseResultSongs.single = single;
  }
  final dynamic noCopyrightRcmd = json['noCopyrightRcmd'];
  if (noCopyrightRcmd != null) {
    wySearchResponseResultSongs.noCopyrightRcmd = noCopyrightRcmd;
  }
  final int? mst = jsonConvert.convert<int>(json['mst']);
  if (mst != null) {
    wySearchResponseResultSongs.mst = mst;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    wySearchResponseResultSongs.cp = cp;
  }
  final int? mv = jsonConvert.convert<int>(json['mv']);
  if (mv != null) {
    wySearchResponseResultSongs.mv = mv;
  }
  final int? rtype = jsonConvert.convert<int>(json['rtype']);
  if (rtype != null) {
    wySearchResponseResultSongs.rtype = rtype;
  }
  final dynamic rurl = json['rurl'];
  if (rurl != null) {
    wySearchResponseResultSongs.rurl = rurl;
  }
  final int? publishTime = jsonConvert.convert<int>(json['publishTime']);
  if (publishTime != null) {
    wySearchResponseResultSongs.publishTime = publishTime;
  }
  final List<String>? tns = (json['tns'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tns != null) {
    wySearchResponseResultSongs.tns = tns;
  }
  final WySearchResponseResultSongsPrivilege? privilege = jsonConvert.convert<
      WySearchResponseResultSongsPrivilege>(json['privilege']);
  if (privilege != null) {
    wySearchResponseResultSongs.privilege = privilege;
  }
  return wySearchResponseResultSongs;
}

Map<String, dynamic> $WySearchResponseResultSongsToJson(
    WySearchResponseResultSongs entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['id'] = entity.id;
  data['pst'] = entity.pst;
  data['t'] = entity.t;
  data['ar'] = entity.ar?.map((v) => v.toJson()).toList();
  data['alia'] = entity.alia;
  data['pop'] = entity.pop;
  data['st'] = entity.st;
  data['rt'] = entity.rt;
  data['fee'] = entity.fee;
  data['v'] = entity.v;
  data['crbt'] = entity.crbt;
  data['cf'] = entity.cf;
  data['al'] = entity.al?.toJson();
  data['dt'] = entity.dt;
  data['h'] = entity.h?.toJson();
  data['m'] = entity.m?.toJson();
  data['l'] = entity.l?.toJson();
  data['sq'] = entity.sq?.toJson();
  data['hr'] = entity.hr;
  data['a'] = entity.a;
  data['cd'] = entity.cd;
  data['no'] = entity.no;
  data['rtUrl'] = entity.rtUrl;
  data['ftype'] = entity.ftype;
  data['rtUrls'] = entity.rtUrls;
  data['djId'] = entity.djId;
  data['copyright'] = entity.copyright;
  data['s_id'] = entity.sId;
  data['mark'] = entity.mark;
  data['originCoverType'] = entity.originCoverType;
  data['originSongSimpleData'] = entity.originSongSimpleData;
  data['tagPicList'] = entity.tagPicList;
  data['resourceState'] = entity.resourceState;
  data['version'] = entity.version;
  data['songJumpInfo'] = entity.songJumpInfo;
  data['entertainmentTags'] = entity.entertainmentTags;
  data['single'] = entity.single;
  data['noCopyrightRcmd'] = entity.noCopyrightRcmd;
  data['mst'] = entity.mst;
  data['cp'] = entity.cp;
  data['mv'] = entity.mv;
  data['rtype'] = entity.rtype;
  data['rurl'] = entity.rurl;
  data['publishTime'] = entity.publishTime;
  data['tns'] = entity.tns;
  data['privilege'] = entity.privilege?.toJson();
  return data;
}

extension WySearchResponseResultSongsExtension on WySearchResponseResultSongs {
  WySearchResponseResultSongs copyWith({
    String? name,
    int? id,
    int? pst,
    int? t,
    List<WySearchResponseResultSongsAr>? ar,
    List<String>? alia,
    double? pop,
    int? st,
    String? rt,
    int? fee,
    int? v,
    dynamic crbt,
    String? cf,
    WySearchResponseResultSongsAl? al,
    int? dt,
    WySearchResponseResultSongsH? h,
    WySearchResponseResultSongsM? m,
    WySearchResponseResultSongsL? l,
    WySearchResponseResultSongsSq? sq,
    dynamic hr,
    dynamic a,
    String? cd,
    int? no,
    dynamic rtUrl,
    int? ftype,
    List<dynamic>? rtUrls,
    int? djId,
    int? copyright,
    int? sId,
    int? mark,
    int? originCoverType,
    dynamic originSongSimpleData,
    dynamic tagPicList,
    bool? resourceState,
    int? version,
    dynamic songJumpInfo,
    dynamic entertainmentTags,
    int? single,
    dynamic noCopyrightRcmd,
    int? mst,
    int? cp,
    int? mv,
    int? rtype,
    dynamic rurl,
    int? publishTime,
    List<String>? tns,
    WySearchResponseResultSongsPrivilege? privilege,
  }) {
    return WySearchResponseResultSongs()
      ..name = name ?? this.name
      ..id = id ?? this.id
      ..pst = pst ?? this.pst
      ..t = t ?? this.t
      ..ar = ar ?? this.ar
      ..alia = alia ?? this.alia
      ..pop = pop ?? this.pop
      ..st = st ?? this.st
      ..rt = rt ?? this.rt
      ..fee = fee ?? this.fee
      ..v = v ?? this.v
      ..crbt = crbt ?? this.crbt
      ..cf = cf ?? this.cf
      ..al = al ?? this.al
      ..dt = dt ?? this.dt
      ..h = h ?? this.h
      ..m = m ?? this.m
      ..l = l ?? this.l
      ..sq = sq ?? this.sq
      ..hr = hr ?? this.hr
      ..a = a ?? this.a
      ..cd = cd ?? this.cd
      ..no = no ?? this.no
      ..rtUrl = rtUrl ?? this.rtUrl
      ..ftype = ftype ?? this.ftype
      ..rtUrls = rtUrls ?? this.rtUrls
      ..djId = djId ?? this.djId
      ..copyright = copyright ?? this.copyright
      ..sId = sId ?? this.sId
      ..mark = mark ?? this.mark
      ..originCoverType = originCoverType ?? this.originCoverType
      ..originSongSimpleData = originSongSimpleData ?? this.originSongSimpleData
      ..tagPicList = tagPicList ?? this.tagPicList
      ..resourceState = resourceState ?? this.resourceState
      ..version = version ?? this.version
      ..songJumpInfo = songJumpInfo ?? this.songJumpInfo
      ..entertainmentTags = entertainmentTags ?? this.entertainmentTags
      ..single = single ?? this.single
      ..noCopyrightRcmd = noCopyrightRcmd ?? this.noCopyrightRcmd
      ..mst = mst ?? this.mst
      ..cp = cp ?? this.cp
      ..mv = mv ?? this.mv
      ..rtype = rtype ?? this.rtype
      ..rurl = rurl ?? this.rurl
      ..publishTime = publishTime ?? this.publishTime
      ..tns = tns ?? this.tns
      ..privilege = privilege ?? this.privilege;
  }
}

WySearchResponseResultSongsAr $WySearchResponseResultSongsArFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsAr wySearchResponseResultSongsAr = WySearchResponseResultSongsAr();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    wySearchResponseResultSongsAr.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    wySearchResponseResultSongsAr.name = name;
  }
  final List<String>? tns = (json['tns'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (tns != null) {
    wySearchResponseResultSongsAr.tns = tns;
  }
  final List<dynamic>? alias = (json['alias'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (alias != null) {
    wySearchResponseResultSongsAr.alias = alias;
  }
  return wySearchResponseResultSongsAr;
}

Map<String, dynamic> $WySearchResponseResultSongsArToJson(
    WySearchResponseResultSongsAr entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['tns'] = entity.tns;
  data['alias'] = entity.alias;
  return data;
}

extension WySearchResponseResultSongsArExtension on WySearchResponseResultSongsAr {
  WySearchResponseResultSongsAr copyWith({
    int? id,
    String? name,
    List<String>? tns,
    List<dynamic>? alias,
  }) {
    return WySearchResponseResultSongsAr()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..tns = tns ?? this.tns
      ..alias = alias ?? this.alias;
  }
}

WySearchResponseResultSongsAl $WySearchResponseResultSongsAlFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsAl wySearchResponseResultSongsAl = WySearchResponseResultSongsAl();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    wySearchResponseResultSongsAl.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    wySearchResponseResultSongsAl.name = name;
  }
  final String? picUrl = jsonConvert.convert<String>(json['picUrl']);
  if (picUrl != null) {
    wySearchResponseResultSongsAl.picUrl = picUrl;
  }
  final List<dynamic>? tns = (json['tns'] as List<dynamic>?)?.map(
          (e) => e).toList();
  if (tns != null) {
    wySearchResponseResultSongsAl.tns = tns;
  }
  final String? picStr = jsonConvert.convert<String>(json['pic_str']);
  if (picStr != null) {
    wySearchResponseResultSongsAl.picStr = picStr;
  }
  final int? pic = jsonConvert.convert<int>(json['pic']);
  if (pic != null) {
    wySearchResponseResultSongsAl.pic = pic;
  }
  return wySearchResponseResultSongsAl;
}

Map<String, dynamic> $WySearchResponseResultSongsAlToJson(
    WySearchResponseResultSongsAl entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['picUrl'] = entity.picUrl;
  data['tns'] = entity.tns;
  data['pic_str'] = entity.picStr;
  data['pic'] = entity.pic;
  return data;
}

extension WySearchResponseResultSongsAlExtension on WySearchResponseResultSongsAl {
  WySearchResponseResultSongsAl copyWith({
    int? id,
    String? name,
    String? picUrl,
    List<dynamic>? tns,
    String? picStr,
    int? pic,
  }) {
    return WySearchResponseResultSongsAl()
      ..id = id ?? this.id
      ..name = name ?? this.name
      ..picUrl = picUrl ?? this.picUrl
      ..tns = tns ?? this.tns
      ..picStr = picStr ?? this.picStr
      ..pic = pic ?? this.pic;
  }
}

WySearchResponseResultSongsH $WySearchResponseResultSongsHFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsH wySearchResponseResultSongsH = WySearchResponseResultSongsH();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    wySearchResponseResultSongsH.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    wySearchResponseResultSongsH.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    wySearchResponseResultSongsH.size = size;
  }
  final double? vd = jsonConvert.convert<double>(json['vd']);
  if (vd != null) {
    wySearchResponseResultSongsH.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    wySearchResponseResultSongsH.sr = sr;
  }
  return wySearchResponseResultSongsH;
}

Map<String, dynamic> $WySearchResponseResultSongsHToJson(
    WySearchResponseResultSongsH entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension WySearchResponseResultSongsHExtension on WySearchResponseResultSongsH {
  WySearchResponseResultSongsH copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr,
  }) {
    return WySearchResponseResultSongsH()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

WySearchResponseResultSongsM $WySearchResponseResultSongsMFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsM wySearchResponseResultSongsM = WySearchResponseResultSongsM();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    wySearchResponseResultSongsM.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    wySearchResponseResultSongsM.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    wySearchResponseResultSongsM.size = size;
  }
  final double? vd = jsonConvert.convert<double>(json['vd']);
  if (vd != null) {
    wySearchResponseResultSongsM.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    wySearchResponseResultSongsM.sr = sr;
  }
  return wySearchResponseResultSongsM;
}

Map<String, dynamic> $WySearchResponseResultSongsMToJson(
    WySearchResponseResultSongsM entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension WySearchResponseResultSongsMExtension on WySearchResponseResultSongsM {
  WySearchResponseResultSongsM copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr,
  }) {
    return WySearchResponseResultSongsM()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

WySearchResponseResultSongsL $WySearchResponseResultSongsLFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsL wySearchResponseResultSongsL = WySearchResponseResultSongsL();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    wySearchResponseResultSongsL.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    wySearchResponseResultSongsL.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    wySearchResponseResultSongsL.size = size;
  }
  final double? vd = jsonConvert.convert<double>(json['vd']);
  if (vd != null) {
    wySearchResponseResultSongsL.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    wySearchResponseResultSongsL.sr = sr;
  }
  return wySearchResponseResultSongsL;
}

Map<String, dynamic> $WySearchResponseResultSongsLToJson(
    WySearchResponseResultSongsL entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension WySearchResponseResultSongsLExtension on WySearchResponseResultSongsL {
  WySearchResponseResultSongsL copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr,
  }) {
    return WySearchResponseResultSongsL()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

WySearchResponseResultSongsSq $WySearchResponseResultSongsSqFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsSq wySearchResponseResultSongsSq = WySearchResponseResultSongsSq();
  final int? br = jsonConvert.convert<int>(json['br']);
  if (br != null) {
    wySearchResponseResultSongsSq.br = br;
  }
  final int? fid = jsonConvert.convert<int>(json['fid']);
  if (fid != null) {
    wySearchResponseResultSongsSq.fid = fid;
  }
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    wySearchResponseResultSongsSq.size = size;
  }
  final double? vd = jsonConvert.convert<double>(json['vd']);
  if (vd != null) {
    wySearchResponseResultSongsSq.vd = vd;
  }
  final int? sr = jsonConvert.convert<int>(json['sr']);
  if (sr != null) {
    wySearchResponseResultSongsSq.sr = sr;
  }
  return wySearchResponseResultSongsSq;
}

Map<String, dynamic> $WySearchResponseResultSongsSqToJson(
    WySearchResponseResultSongsSq entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['br'] = entity.br;
  data['fid'] = entity.fid;
  data['size'] = entity.size;
  data['vd'] = entity.vd;
  data['sr'] = entity.sr;
  return data;
}

extension WySearchResponseResultSongsSqExtension on WySearchResponseResultSongsSq {
  WySearchResponseResultSongsSq copyWith({
    int? br,
    int? fid,
    int? size,
    double? vd,
    int? sr,
  }) {
    return WySearchResponseResultSongsSq()
      ..br = br ?? this.br
      ..fid = fid ?? this.fid
      ..size = size ?? this.size
      ..vd = vd ?? this.vd
      ..sr = sr ?? this.sr;
  }
}

WySearchResponseResultSongsPrivilege $WySearchResponseResultSongsPrivilegeFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsPrivilege wySearchResponseResultSongsPrivilege = WySearchResponseResultSongsPrivilege();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    wySearchResponseResultSongsPrivilege.id = id;
  }
  final int? fee = jsonConvert.convert<int>(json['fee']);
  if (fee != null) {
    wySearchResponseResultSongsPrivilege.fee = fee;
  }
  final int? payed = jsonConvert.convert<int>(json['payed']);
  if (payed != null) {
    wySearchResponseResultSongsPrivilege.payed = payed;
  }
  final int? st = jsonConvert.convert<int>(json['st']);
  if (st != null) {
    wySearchResponseResultSongsPrivilege.st = st;
  }
  final int? pl = jsonConvert.convert<int>(json['pl']);
  if (pl != null) {
    wySearchResponseResultSongsPrivilege.pl = pl;
  }
  final int? dl = jsonConvert.convert<int>(json['dl']);
  if (dl != null) {
    wySearchResponseResultSongsPrivilege.dl = dl;
  }
  final int? sp = jsonConvert.convert<int>(json['sp']);
  if (sp != null) {
    wySearchResponseResultSongsPrivilege.sp = sp;
  }
  final int? cp = jsonConvert.convert<int>(json['cp']);
  if (cp != null) {
    wySearchResponseResultSongsPrivilege.cp = cp;
  }
  final int? subp = jsonConvert.convert<int>(json['subp']);
  if (subp != null) {
    wySearchResponseResultSongsPrivilege.subp = subp;
  }
  final bool? cs = jsonConvert.convert<bool>(json['cs']);
  if (cs != null) {
    wySearchResponseResultSongsPrivilege.cs = cs;
  }
  final int? maxbr = jsonConvert.convert<int>(json['maxbr']);
  if (maxbr != null) {
    wySearchResponseResultSongsPrivilege.maxbr = maxbr;
  }
  final int? fl = jsonConvert.convert<int>(json['fl']);
  if (fl != null) {
    wySearchResponseResultSongsPrivilege.fl = fl;
  }
  final bool? toast = jsonConvert.convert<bool>(json['toast']);
  if (toast != null) {
    wySearchResponseResultSongsPrivilege.toast = toast;
  }
  final int? flag = jsonConvert.convert<int>(json['flag']);
  if (flag != null) {
    wySearchResponseResultSongsPrivilege.flag = flag;
  }
  final bool? preSell = jsonConvert.convert<bool>(json['preSell']);
  if (preSell != null) {
    wySearchResponseResultSongsPrivilege.preSell = preSell;
  }
  final int? playMaxbr = jsonConvert.convert<int>(json['playMaxbr']);
  if (playMaxbr != null) {
    wySearchResponseResultSongsPrivilege.playMaxbr = playMaxbr;
  }
  final int? downloadMaxbr = jsonConvert.convert<int>(json['downloadMaxbr']);
  if (downloadMaxbr != null) {
    wySearchResponseResultSongsPrivilege.downloadMaxbr = downloadMaxbr;
  }
  final String? maxBrLevel = jsonConvert.convert<String>(json['maxBrLevel']);
  if (maxBrLevel != null) {
    wySearchResponseResultSongsPrivilege.maxBrLevel = maxBrLevel;
  }
  final String? playMaxBrLevel = jsonConvert.convert<String>(
      json['playMaxBrLevel']);
  if (playMaxBrLevel != null) {
    wySearchResponseResultSongsPrivilege.playMaxBrLevel = playMaxBrLevel;
  }
  final String? downloadMaxBrLevel = jsonConvert.convert<String>(
      json['downloadMaxBrLevel']);
  if (downloadMaxBrLevel != null) {
    wySearchResponseResultSongsPrivilege.downloadMaxBrLevel =
        downloadMaxBrLevel;
  }
  final String? plLevel = jsonConvert.convert<String>(json['plLevel']);
  if (plLevel != null) {
    wySearchResponseResultSongsPrivilege.plLevel = plLevel;
  }
  final String? dlLevel = jsonConvert.convert<String>(json['dlLevel']);
  if (dlLevel != null) {
    wySearchResponseResultSongsPrivilege.dlLevel = dlLevel;
  }
  final String? flLevel = jsonConvert.convert<String>(json['flLevel']);
  if (flLevel != null) {
    wySearchResponseResultSongsPrivilege.flLevel = flLevel;
  }
  final dynamic rscl = json['rscl'];
  if (rscl != null) {
    wySearchResponseResultSongsPrivilege.rscl = rscl;
  }
  final WySearchResponseResultSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege = jsonConvert
      .convert<WySearchResponseResultSongsPrivilegeFreeTrialPrivilege>(
      json['freeTrialPrivilege']);
  if (freeTrialPrivilege != null) {
    wySearchResponseResultSongsPrivilege.freeTrialPrivilege =
        freeTrialPrivilege;
  }
  final int? rightSource = jsonConvert.convert<int>(json['rightSource']);
  if (rightSource != null) {
    wySearchResponseResultSongsPrivilege.rightSource = rightSource;
  }
  final List<
      WySearchResponseResultSongsPrivilegeChargeInfoList>? chargeInfoList = (json['chargeInfoList'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          WySearchResponseResultSongsPrivilegeChargeInfoList>(
          e) as WySearchResponseResultSongsPrivilegeChargeInfoList).toList();
  if (chargeInfoList != null) {
    wySearchResponseResultSongsPrivilege.chargeInfoList = chargeInfoList;
  }
  return wySearchResponseResultSongsPrivilege;
}

Map<String, dynamic> $WySearchResponseResultSongsPrivilegeToJson(
    WySearchResponseResultSongsPrivilege entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['fee'] = entity.fee;
  data['payed'] = entity.payed;
  data['st'] = entity.st;
  data['pl'] = entity.pl;
  data['dl'] = entity.dl;
  data['sp'] = entity.sp;
  data['cp'] = entity.cp;
  data['subp'] = entity.subp;
  data['cs'] = entity.cs;
  data['maxbr'] = entity.maxbr;
  data['fl'] = entity.fl;
  data['toast'] = entity.toast;
  data['flag'] = entity.flag;
  data['preSell'] = entity.preSell;
  data['playMaxbr'] = entity.playMaxbr;
  data['downloadMaxbr'] = entity.downloadMaxbr;
  data['maxBrLevel'] = entity.maxBrLevel;
  data['playMaxBrLevel'] = entity.playMaxBrLevel;
  data['downloadMaxBrLevel'] = entity.downloadMaxBrLevel;
  data['plLevel'] = entity.plLevel;
  data['dlLevel'] = entity.dlLevel;
  data['flLevel'] = entity.flLevel;
  data['rscl'] = entity.rscl;
  data['freeTrialPrivilege'] = entity.freeTrialPrivilege?.toJson();
  data['rightSource'] = entity.rightSource;
  data['chargeInfoList'] =
      entity.chargeInfoList?.map((v) => v.toJson()).toList();
  return data;
}

extension WySearchResponseResultSongsPrivilegeExtension on WySearchResponseResultSongsPrivilege {
  WySearchResponseResultSongsPrivilege copyWith({
    int? id,
    int? fee,
    int? payed,
    int? st,
    int? pl,
    int? dl,
    int? sp,
    int? cp,
    int? subp,
    bool? cs,
    int? maxbr,
    int? fl,
    bool? toast,
    int? flag,
    bool? preSell,
    int? playMaxbr,
    int? downloadMaxbr,
    String? maxBrLevel,
    String? playMaxBrLevel,
    String? downloadMaxBrLevel,
    String? plLevel,
    String? dlLevel,
    String? flLevel,
    dynamic rscl,
    WySearchResponseResultSongsPrivilegeFreeTrialPrivilege? freeTrialPrivilege,
    int? rightSource,
    List<WySearchResponseResultSongsPrivilegeChargeInfoList>? chargeInfoList,
  }) {
    return WySearchResponseResultSongsPrivilege()
      ..id = id ?? this.id
      ..fee = fee ?? this.fee
      ..payed = payed ?? this.payed
      ..st = st ?? this.st
      ..pl = pl ?? this.pl
      ..dl = dl ?? this.dl
      ..sp = sp ?? this.sp
      ..cp = cp ?? this.cp
      ..subp = subp ?? this.subp
      ..cs = cs ?? this.cs
      ..maxbr = maxbr ?? this.maxbr
      ..fl = fl ?? this.fl
      ..toast = toast ?? this.toast
      ..flag = flag ?? this.flag
      ..preSell = preSell ?? this.preSell
      ..playMaxbr = playMaxbr ?? this.playMaxbr
      ..downloadMaxbr = downloadMaxbr ?? this.downloadMaxbr
      ..maxBrLevel = maxBrLevel ?? this.maxBrLevel
      ..playMaxBrLevel = playMaxBrLevel ?? this.playMaxBrLevel
      ..downloadMaxBrLevel = downloadMaxBrLevel ?? this.downloadMaxBrLevel
      ..plLevel = plLevel ?? this.plLevel
      ..dlLevel = dlLevel ?? this.dlLevel
      ..flLevel = flLevel ?? this.flLevel
      ..rscl = rscl ?? this.rscl
      ..freeTrialPrivilege = freeTrialPrivilege ?? this.freeTrialPrivilege
      ..rightSource = rightSource ?? this.rightSource
      ..chargeInfoList = chargeInfoList ?? this.chargeInfoList;
  }
}

WySearchResponseResultSongsPrivilegeFreeTrialPrivilege $WySearchResponseResultSongsPrivilegeFreeTrialPrivilegeFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsPrivilegeFreeTrialPrivilege wySearchResponseResultSongsPrivilegeFreeTrialPrivilege = WySearchResponseResultSongsPrivilegeFreeTrialPrivilege();
  final bool? resConsumable = jsonConvert.convert<bool>(json['resConsumable']);
  if (resConsumable != null) {
    wySearchResponseResultSongsPrivilegeFreeTrialPrivilege.resConsumable =
        resConsumable;
  }
  final bool? userConsumable = jsonConvert.convert<bool>(
      json['userConsumable']);
  if (userConsumable != null) {
    wySearchResponseResultSongsPrivilegeFreeTrialPrivilege.userConsumable =
        userConsumable;
  }
  final dynamic listenType = json['listenType'];
  if (listenType != null) {
    wySearchResponseResultSongsPrivilegeFreeTrialPrivilege.listenType =
        listenType;
  }
  final dynamic cannotListenReason = json['cannotListenReason'];
  if (cannotListenReason != null) {
    wySearchResponseResultSongsPrivilegeFreeTrialPrivilege.cannotListenReason =
        cannotListenReason;
  }
  return wySearchResponseResultSongsPrivilegeFreeTrialPrivilege;
}

Map<String,
    dynamic> $WySearchResponseResultSongsPrivilegeFreeTrialPrivilegeToJson(
    WySearchResponseResultSongsPrivilegeFreeTrialPrivilege entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['resConsumable'] = entity.resConsumable;
  data['userConsumable'] = entity.userConsumable;
  data['listenType'] = entity.listenType;
  data['cannotListenReason'] = entity.cannotListenReason;
  return data;
}

extension WySearchResponseResultSongsPrivilegeFreeTrialPrivilegeExtension on WySearchResponseResultSongsPrivilegeFreeTrialPrivilege {
  WySearchResponseResultSongsPrivilegeFreeTrialPrivilege copyWith({
    bool? resConsumable,
    bool? userConsumable,
    dynamic listenType,
    dynamic cannotListenReason,
  }) {
    return WySearchResponseResultSongsPrivilegeFreeTrialPrivilege()
      ..resConsumable = resConsumable ?? this.resConsumable
      ..userConsumable = userConsumable ?? this.userConsumable
      ..listenType = listenType ?? this.listenType
      ..cannotListenReason = cannotListenReason ?? this.cannotListenReason;
  }
}

WySearchResponseResultSongsPrivilegeChargeInfoList $WySearchResponseResultSongsPrivilegeChargeInfoListFromJson(
    Map<String, dynamic> json) {
  final WySearchResponseResultSongsPrivilegeChargeInfoList wySearchResponseResultSongsPrivilegeChargeInfoList = WySearchResponseResultSongsPrivilegeChargeInfoList();
  final int? rate = jsonConvert.convert<int>(json['rate']);
  if (rate != null) {
    wySearchResponseResultSongsPrivilegeChargeInfoList.rate = rate;
  }
  final dynamic chargeUrl = json['chargeUrl'];
  if (chargeUrl != null) {
    wySearchResponseResultSongsPrivilegeChargeInfoList.chargeUrl = chargeUrl;
  }
  final dynamic chargeMessage = json['chargeMessage'];
  if (chargeMessage != null) {
    wySearchResponseResultSongsPrivilegeChargeInfoList.chargeMessage =
        chargeMessage;
  }
  final int? chargeType = jsonConvert.convert<int>(json['chargeType']);
  if (chargeType != null) {
    wySearchResponseResultSongsPrivilegeChargeInfoList.chargeType = chargeType;
  }
  return wySearchResponseResultSongsPrivilegeChargeInfoList;
}

Map<String, dynamic> $WySearchResponseResultSongsPrivilegeChargeInfoListToJson(
    WySearchResponseResultSongsPrivilegeChargeInfoList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['rate'] = entity.rate;
  data['chargeUrl'] = entity.chargeUrl;
  data['chargeMessage'] = entity.chargeMessage;
  data['chargeType'] = entity.chargeType;
  return data;
}

extension WySearchResponseResultSongsPrivilegeChargeInfoListExtension on WySearchResponseResultSongsPrivilegeChargeInfoList {
  WySearchResponseResultSongsPrivilegeChargeInfoList copyWith({
    int? rate,
    dynamic chargeUrl,
    dynamic chargeMessage,
    int? chargeType,
  }) {
    return WySearchResponseResultSongsPrivilegeChargeInfoList()
      ..rate = rate ?? this.rate
      ..chargeUrl = chargeUrl ?? this.chargeUrl
      ..chargeMessage = chargeMessage ?? this.chargeMessage
      ..chargeType = chargeType ?? this.chargeType;
  }
}