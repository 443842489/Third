//
//  BaseUrl.h
//  smarket
//
//  Created by che on 16/10/31.
//  Copyright © 2016年 tlg. All rights reserved.
//

#ifndef BaseUrl_h
#define BaseUrl_h


#define HOST_URL @"https://jz.wlw678.com/"
// 登录
static NSString *LOGIN =@"api/user/login";

//注册
static NSString *REGISTER = @"api/user/register";

//修改密码
static NSString *CHANGE_PASS = @"api/user/changepass";

//找回密码
static NSString *FIND_PASS = @"api/user/findpass";

//相册列表
static NSString *PHOTOLIST = @"api/album/lst";

//相册详情
static NSString *PHOTODETAILLIST = @"api/album/detail";

//新建相册
static NSString *ADDPHOTO =@"api/album/add";

//编辑相册
static NSString *EDITPHOTO =@"api/album/edit";

//删除相册
static NSString *DELETEPHOTO =@"api/album/del";

//删除单张相片
static NSString *DELETESINGLEPHOTO = @"api/album/delone";

//上传相片
static NSString *UPLOADPHOTO =@"api/album/uploadphoto";

//日记列表
static NSString *DIARYLIST =@"api/diary/lst";

//写日记
static NSString *WRITEDIARY =@"api/diary/add";

//日记详情api接口
static NSString *DIARYDETAIL =@"api/diary/detail";

//日记详情H5页面
static NSString *DIARYDETAILH5 =@"api/note/notedetail";

//日记编辑
static NSString *EDITDIARY = @"api/diary/edit";

//日记删除
static NSString *DELETEDIARY =@"api/diary/del";

//用户日记分类信息
static NSString *DIARYKIND = @"api/diary/diarycateinfo";

//获取用户个人信息
static NSString *USERINFO =@"api/user/info";

//我的空间
static NSString *MYSPACE =@"api/album/myspace";

//他的空间
static NSString *HISSPACE =@"api/album/hisspace";

//需求大厅列表/条件筛选
static NSString *REWARD = @"api/hometown/rewardlst";

//家乡话需求详情
static NSString *HOMETOWNDETAIL =@"api/hometown/detail";

//家乡话需求详情里，删除自己的语音
static NSString *DELETEMYANSWER =@"api/hometown/delmyanswer";

//家乡话上传
static NSString *UPVOICE = @"api/hometown/add";

//发布需求
static NSString *ISSUENEED = @"api/hometown/reward";

//我的家宝币
static NSString *MY_COIN = @"api/user/mycoin";

//我的二维码
static NSString *MY_CODE = @"api/user/mycode";

//首页-族谱大厅  che
static NSString *FAMILY_HALL = @"api/relations/index";

//家乡话接单回答
static NSString *VOICEANSWER = @"api/hometown/answer";

//家乡话列表
static NSString *HOMELIST =@"api/hometown/lst";

//我的收藏  che
static NSString *MY_COLLECTION = @"api/collection/mycollection";

//族谱详情  che
static NSString *PEDIGREE_DETAIL = @"api/genealogy/detail";

//族谱列表  che
static NSString *PEDIGREE_LIST = @"api/genealogy/lst";

//添加收藏  che
static NSString *ADD_COLLECTION = @"api/collection/add";

//编辑收藏  che
static NSString *EDIT_COLLECTION = @"api/collection/edit";

//删除收藏  che
static NSString *DEL_COLLECTION = @"api/collection/del";

//收藏详情  che
static NSString *COLLECTION_DETAIL = @"api/collection/ctinfo";

//收藏大厅  che
static NSString *COLLECTION_HALL = @"api/collection/lst";

//名人堂列表  che
static NSString *FAMEOUS_LIST = @"api/celebrity/lst";

//名人堂详情  che
static NSString *FAMEOUS_DETAIL = @"api/celebrity/detail";

//收藏详情点赞或取消点赞  che
static NSString *COLLECTION_DETAIL_ZAN = @"api/collection/favorites";

//商务合作  che
static NSString *INVEST = @"api/user/joinus";

//家族关系列表  che
static NSString *FAMILY_RELATION = @"api/relations/showtree";

//启动页  che
static NSString *SPLASH_SCREEN = @"api/user/start";

//个人资料编辑
static NSString *EDITMY = @"api/user/editmy";

//我的消息
static NSString *MY_NOTICE = @"api/user/mynotice";

//我的需求（家乡话）
static NSString *MY_ORD = @"api/hometown/myord";

//添加关系(加为好友)
static NSString *ADD_RELATIONS = @"api/relations/add";

//好友资料详情(好友或非好友资料详情)
static NSString *PERSON_DETAIL = @"api/relations/persondetail";

//招商加盟
static NSString *ZSJM = @"api/user/joinus";

//客服电话
static NSString *TEL = @"027-88888888";

//家乡话需求详情
static NSString *HOME_TOWN_DETAIL = @"api/hometown/detail";

//好友申请列表
static NSString *RELATION_NOTICE = @"api/relations/relationsnotice";

//通过好友申请
static NSString *PASS = @"api/relations/pass";

//拒绝好友申请
static NSString *UNPASS = @"api/relations/unpass";

//家乡话采纳
static NSString *CONFIRM = @"api/hometown/confirm";

//获取手机验证码
static NSString *SEND_MESSAGE =@"api/user/sendmessage";

//更换手机绑定
static NSString *CHANGE_MOBILE = @"api/user/changemobile";

//帮助页面（H5页面）
static NSString *USER_HELP =@"api/note/userhelp";

//家宝币充值下单
static NSString *RECHARGE = @"api/coin/recharge";

//家宝币帮助说明(H5)
static NSString *COIN_HELP = @"api/note/coinhelp";

//用户注册协议(H5)
static NSString *REGISTRATION = @"api/note/registration";

//查看系统消息
static NSString *SYS_MESSAGE = @"api/note/sysmessage";

//我的消息 （点击查看）
static NSString *READ_MY_NOTICE = @"api/user/readmynotice";

//修改好友关系（称谓）
static NSString *FRIEND_SHIP = @"api/user/friendship";

#endif /* BaseUrl_h */



