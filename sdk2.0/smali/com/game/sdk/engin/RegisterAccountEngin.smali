.class public Lcom/game/sdk/engin/RegisterAccountEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "RegisterAccountEngin.java"


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
.field public mContext:Landroid/content/Context;

.field public passWord:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "passWord"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->userName:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->passWord:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->REGISTER_ACCOUNT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "n"

    iget-object v5, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->userName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "p"

    iget-object v5, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->passWord:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v4, "f"

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v4, "is_quick"

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/RegisterAccountEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 57
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_1

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6ce8\u518c\u8d26\u53f7\u7ed3\u679c----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 59
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v4}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 63
    :cond_0
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/QuickLoginInfo;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/RegisterAccountEngin;->saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    const/4 v2, 0x1

    .line 74
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

    .line 75
    return v2

    .line 67
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 70
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/QuickLoginInfo;>;"
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/game/sdk/domain/QuickLoginInfo;)V
    .locals 7
    .param p1, "quickLoginInfo"    # Lcom/game/sdk/domain/QuickLoginInfo;

    .prologue
    const/4 v6, 0x1

    .line 87
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userName:Ljava/lang/String;

    .line 89
    .local v0, "accountNumber":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v0, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 90
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 91
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    .line 92
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->lastLoginTime:J

    iput-wide v4, v3, Lcom/game/sdk/domain/UserInfo;->logintime:J

    .line 93
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->sign:Ljava/lang/String;

    iput-object v4, v3, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    .line 94
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    iput v4, v3, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 95
    sput-boolean v6, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 97
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    if-eqz v3, :cond_0

    .line 98
    iget-object v3, p1, Lcom/game/sdk/domain/QuickLoginInfo;->gameNotice:Lcom/game/sdk/domain/NoticeMsg;

    iget-object v3, v3, Lcom/game/sdk/domain/NoticeMsg;->body:Ljava/lang/String;

    sput-object v3, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    .line 101
    :cond_0
    const/4 v3, 0x3

    sput v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 104
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 105
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 104
    invoke-static {v3, v4, v6}, Lcom/game/sdk/utils/GameBox2SDKUtil;->exchangeUserInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    move-result-object v1

    .line 106
    .local v1, "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/game/sdk/utils/GameBox2SDKUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;)V

    .line 108
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v2

    .line 110
    .local v2, "isExist":Z
    if-nez v2, :cond_2

    .line 111
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iget v5, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    invoke-virtual {v3, v4, v5}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-static {v3, v4}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 124
    return-void

    .line 87
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .end local v2    # "isExist":Z
    :cond_1
    iget-object v0, p1, Lcom/game/sdk/domain/QuickLoginInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 114
    .restart local v0    # "accountNumber":Ljava/lang/String;
    .restart local v1    # "gUserInfo":Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;
    .restart local v2    # "isExist":Z
    :cond_2
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/game/sdk/engin/RegisterAccountEngin;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v3

    iget-object v4, p1, Lcom/game/sdk/domain/QuickLoginInfo;->passWord:Ljava/lang/String;

    iget v5, p1, Lcom/game/sdk/domain/QuickLoginInfo;->isValiMobile:I

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1
.end method
