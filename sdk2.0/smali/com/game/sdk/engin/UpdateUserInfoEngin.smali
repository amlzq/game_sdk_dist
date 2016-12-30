.class public Lcom/game/sdk/engin/UpdateUserInfoEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UpdateUserInfoEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public updateUserInfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uUserInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 33
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UPDATE_USER_INFO_URL:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserInfo()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 47
    const/4 v2, 0x1

    .line 50
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "user_id"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    const-string v4, "face"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    const-string v4, "nick_name"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->sex:I

    if-lez v4, :cond_2

    .line 62
    const-string v4, "sex"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->sex:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 66
    const-string v4, "birth"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->birth:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 70
    const-string v4, "email"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 74
    const-string v4, "qq"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_5
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/UpdateInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/UpdateUserInfoEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 79
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    if-eqz v3, :cond_6

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_6

    .line 80
    const-string v4, "\u4fee\u6539\u7528\u6237\u4fe1\u606f\u6210\u529f!"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    :goto_0
    return v2

    .line 82
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/UpdateInfo;>;"
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
