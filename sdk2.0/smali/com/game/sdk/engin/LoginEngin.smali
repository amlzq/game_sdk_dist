.class public Lcom/game/sdk/engin/LoginEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "LoginEngin.java"


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
.field public accountType:I

.field public loginCount:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/engin/LoginEngin;->loginCount:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 34
    iput-object p1, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->LOGIN_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 43
    const/4 v2, 0x0

    .line 45
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "n"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v4, "p"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/LoginEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 51
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_1

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u9700\u9a8c\u8bc1\u7801\u767b\u5f55\u7ed3\u679c----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 53
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 57
    :cond_0
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/LoginEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v2, 0x1

    .line 68
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 69
    return v2

    .line 61
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 64
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    .locals 7
    .param p1, "quickLoginInfo"    # Lcom/game/sdk/domain/QuickLoginInfo;

    .prologue
    const/4 v6, 0x1

    .line 81
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    .line 83
    .local v0, "accountNumber":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v0, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 84
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 85
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 86
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 87
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->lastLoginTime:J

    iput-wide v4, v3, Lcom/game/sdk/domain/UserInfo;->logintime:J

    .line 88
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->sign:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    .line 89
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iput v4, v3, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 90
    sput-boolean v6, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 91
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    iget-object v3, v3, Lcom/game/sdk/domain/NoticeMsg;->body:Ljava/lang/String;

    sput-object v3, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 96
    :cond_0
    sget v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 97
    const/4 v3, 0x0

    iput v3, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 101
    :cond_1
    sget v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 102
    iput v6, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 106
    :cond_2
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 107
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    iget v5, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    .line 106
    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/GameBox2SDKUtil;->exchangeUserInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    move-result-object v1

    .line 108
    .local v1, "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget-object v3, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/game/sdk/utils/GameBox2SDKUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)V

    .line 110
    iget-object v3, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v2

    .line 112
    .local v2, "isExist":Z
    if-nez v2, :cond_4

    .line 113
    iget-object v3, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iget v5, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iget v6, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 122
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-static {v3, v4}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 123
    return-void

    .line 81
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .end local v2    # "isExist":Z
    :cond_3
    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 116
    .restart local v0    # "accountNumber":Ljava/lang/String;
    .restart local v1    # "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .restart local v2    # "isExist":Z
    :cond_4
    iget-object v3, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/game/sdk/engin/LoginEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iget v5, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iget v6, p0, Lcom/game/sdk/engin/LoginEngin;->accountType:I

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1
.end method
