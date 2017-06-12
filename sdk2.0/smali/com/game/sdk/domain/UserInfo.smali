.class public Lcom/game/sdk/domain/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public accountType:I

.field public agent:Ljava/lang/String;

.field public agentId:Ljava/lang/String;

.field public areaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "area_id"
    .end annotation
.end field

.field public birth:Ljava/lang/String;

.field public device:I

.field public deviceinfo:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public face:Ljava/lang/String;

.field public gttb:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "game_money"
    .end annotation
.end field

.field public imeil:Ljava/lang/String;

.field public isrpwd:I

.field public kefuQQ:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "kefu_qq"
    .end annotation
.end field

.field public logintime:J

.field public mobile:Ljava/lang/String;

.field public newpassword:Ljava/lang/String;

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "nick_name"
    .end annotation
.end field

.field public password:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public sex:I

.field public shareContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "share_content"
    .end annotation
.end field

.field public sign:Ljava/lang/String;

.field public ttb:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "money"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field public validateMobile:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_vali_mobile"
    .end annotation
.end field

.field public vipLevel:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "vip_level"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lcom/game/sdk/domain/UserInfo;->isrpwd:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/game/sdk/domain/UserInfo;->device:I

    .line 58
    iput v1, p0, Lcom/game/sdk/domain/UserInfo;->accountType:I

    .line 5
    return-void
.end method
