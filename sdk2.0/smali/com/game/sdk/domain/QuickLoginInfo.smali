.class public Lcom/game/sdk/domain/QuickLoginInfo;
.super Ljava/lang/Object;
.source "QuickLoginInfo.java"


# instance fields
.field public gameNotice:Lcom/game/sdk/domain/NoticeMsg;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "game_notice"
    .end annotation
.end field

.field public isValiMobile:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "is_vali_mobile"
    .end annotation
.end field

.field public lastLoginTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "last_login_time"
    .end annotation
.end field

.field public memkey:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mk"
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mobile"
    .end annotation
.end field

.field public passWord:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pwd"
    .end annotation
.end field

.field public registerTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "reg_time"
    .end annotation
.end field

.field public sign:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sign"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
