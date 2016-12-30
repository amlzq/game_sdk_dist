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

.method public quickRun()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "code"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "f"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v4, "is_quick"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    const-string v4, "m"

    iget-object v5, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/QuickLoginEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 100
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_4

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_4

    .line 102
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

    .line 104
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_1

    .line 105
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 108
    :cond_1
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/QuickLoginEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V

    .line 109
    const/4 v2, 0x1

    .line 110
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 111
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 110
    :goto_0
    iput v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_2
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 133
    return v2

    .line 111
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_3
    const/16 v4, 0x64

    goto :goto_0

    .line 114
    :cond_4
    :try_start_1
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u8bf7\u6c42\u7684\u6b21\u6570----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 116
    iget v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 117
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 118
    iget v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    .line 126
    iget-boolean v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->isRetry:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->loginCount:I

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->mqrNumLimit:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 97
    if-lt v4, v5, :cond_0

    goto :goto_1

    .line 128
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public run()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 53
    const/4 v2, 0x0

    .line 56
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "code"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v4, "f"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v4, "is_quick"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    const-string v4, "m"

    iget-object v5, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mobileNumber:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/QuickLoginEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 66
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_2

    .line 67
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

    .line 69
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_1

    .line 70
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 73
    :cond_1
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/QuickLoginEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v2, 0x1

    .line 81
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 82
    return v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    .locals 7
    .param p1, "quickLoginInfo"    # Lcom/game/sdk/domain/QuickLoginInfo;

    .prologue
    const/4 v6, 0x0

    .line 145
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    .line 148
    .local v0, "accountNumber":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v2

    .line 150
    .local v2, "isExist":Z
    if-nez v2, :cond_2

    .line 151
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    .line 152
    iget v5, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    .line 151
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 162
    :goto_1
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    invoke-static {v0, v3, v6}, Lcom/game/sdk/utils/GameBox2SDKUtil;->exchangeUserInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    move-result-object v1

    .line 163
    .local v1, "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/game/sdk/utils/GameBox2SDKUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)V

    .line 165
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v0, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 166
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 167
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 168
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->lastLoginTime:J

    iput-wide v4, v3, Lcom/game/sdk/domain/UserInfo;->logintime:J

    .line 169
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->sign:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    .line 170
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iput v4, v3, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 171
    const/4 v3, 0x1

    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 172
    const/4 v3, 0x2

    sput v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 173
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    iget-object v3, v3, Lcom/game/sdk/domain/NoticeMsg;->body:Ljava/lang/String;

    sput-object v3, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    invoke-virtual {v3, v4, v5}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 181
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-static {v3, v4}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 182
    return-void

    .line 146
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .end local v2    # "isExist":Z
    :cond_1
    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 155
    .restart local v0    # "accountNumber":Ljava/lang/String;
    .restart local v2    # "isExist":Z
    :cond_2
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/game/sdk/engin/QuickLoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    .line 158
    iget v5, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    .line 157
    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1
.end method
