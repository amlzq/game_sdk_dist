.class public Lcom/game/sdk/engin/UserInfoEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UserInfoEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/game/sdk/engin/UserInfoEngin;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/game/sdk/engin/UserInfoEngin;->userId:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->USER_INFO_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 45
    const/4 v2, 0x1

    .line 47
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "user_id"

    iget-object v5, p0, Lcom/game/sdk/engin/UserInfoEngin;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/UserInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/UserInfoEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 52
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UserInfo;>;"
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u7ed3\u679c----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_0

    .line 55
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 59
    :cond_0
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/UserInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/UserInfoEngin;->saveUserInfo(Lcom/game/sdk/domain/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UserInfo;>;"
    :goto_0
    return v2

    .line 61
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/game/sdk/domain/UserInfo;)V
    .locals 2
    .param p1, "userInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 79
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, p1, Lcom/game/sdk/domain/UserInfo;->sex:I

    iput v1, v0, Lcom/game/sdk/domain/UserInfo;->sex:I

    .line 86
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->areaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->areaId:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, p1, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v1, p1, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iput v1, v0, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 94
    return-void
.end method
