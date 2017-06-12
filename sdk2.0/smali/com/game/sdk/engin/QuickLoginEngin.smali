.class public Lcom/game/sdk/engin/QuickLoginEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "QuickLoginEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/QuickLoginInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public isRetry:Z

.field public loginCount:I

.field public mContext:Landroid/content/Context;

.field public mobileNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/engin/QuickLoginEngin;->isRetry:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRetry"    # Z
    .param p3, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/engin/QuickLoginEngin;->isRetry:Z

    .line 42
    iput-object p1, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    .line 43
    iput-boolean p2, p0, Lcom/game/sdk/engin/QuickLoginEngin;->isRetry:Z

    .line 44
    iput-object p3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->QUICK_LOGIN_URL:Ljava/lang/String;

    return-object v0
.end method

.method public quickRun()Lcom/game/sdk/domain/LoginResult;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    new-instance v1, Lcom/game/sdk/domain/LoginResult;

    invoke-direct {v1}, Lcom/game/sdk/domain/LoginResult;-><init>()V

    .line 91
    .local v1, "loginResult":Lcom/game/sdk/domain/LoginResult;
    iput-boolean v8, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    .line 93
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "code"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v4, "f"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v4, "is_quick"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    const-string v4, "m"

    iget-object v5, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/QuickLoginEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 105
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_4

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_4

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e00\u952e\u767b\u5f55\u540e\u7ed3\u679c----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 109
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_1

    .line 110
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 113
    :cond_1
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/QuickLoginEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V

    .line 114
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    .line 115
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 116
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    :goto_0
    iput v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 141
    return-object v1

    .line 116
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_3
    const/16 v4, 0x64

    goto :goto_0

    .line 119
    :cond_4
    :try_start_1
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u8bf7\u6c42\u7684\u6b21\u6570----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 121
    iget v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 123
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrDelay:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrDelay:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 126
    :cond_5
    iget v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    .line 134
    iget-boolean v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->isRetry:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 102
    if-lt v4, v5, :cond_0

    goto :goto_1

    .line 136
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v8, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    goto :goto_1
.end method

.method public run()Lcom/game/sdk/domain/LoginResult;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 53
    new-instance v1, Lcom/game/sdk/domain/LoginResult;

    invoke-direct {v1}, Lcom/game/sdk/domain/LoginResult;-><init>()V

    .line 54
    .local v1, "loginResult":Lcom/game/sdk/domain/LoginResult;
    iput-boolean v7, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    .line 57
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "code"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v4, "f"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v4, "is_quick"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    const-string v4, "m"

    iget-object v5, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/QuickLoginEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 68
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v8, :cond_2

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u624b\u673a\u53f7-\u9a8c\u8bc1\u7801\u65b9\u5f0f-\u767b\u5f55\u6210\u529f----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 71
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_1

    .line 72
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 75
    :cond_1
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/QuickLoginEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V

    .line 76
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/game/sdk/domain/LoginResult;->result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 86
    return-object v1

    .line 78
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    .line 79
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v7, v1, Lcom/game/sdk/domain/LoginResult;->result:Z

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    .locals 6
    .param p1, "quickLoginInfo"    # Lcom/game/sdk/domain/QuickLoginInfo;

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    .line 156
    .local v0, "accountNumber":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v1

    .line 158
    .local v1, "isExist":Z
    if-nez v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    .line 160
    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    .line 159
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 169
    :goto_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v0, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 170
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 171
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 172
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userId:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 173
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->lastLoginTime:J

    iput-wide v4, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    .line 174
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->sign:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    .line 175
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 176
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->agentId:Ljava/lang/String;

    iput-object v3, v2, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    .line 177
    const/4 v2, 0x1

    sput-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 178
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 179
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    iget-object v2, v2, Lcom/game/sdk/domain/NoticeMsg;->body:Ljava/lang/String;

    sput-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/engin/QuickLoginEngin;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 188
    return-void

    .line 154
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "isExist":Z
    :cond_1
    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    goto :goto_0

    .line 163
    .restart local v0    # "accountNumber":Ljava/lang/String;
    .restart local v1    # "isExist":Z
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    .line 166
    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    .line 165
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1
.end method
