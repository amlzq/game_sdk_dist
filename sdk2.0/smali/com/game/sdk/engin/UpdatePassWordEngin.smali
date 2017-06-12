.class public Lcom/game/sdk/engin/UpdatePassWordEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UpdatePassWordEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public accountType:I

.field public mContext:Landroid/content/Context;

.field public newPassWord:Ljava/lang/String;

.field public oldPassWord:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "oldPassWord"    # Ljava/lang/String;
    .param p4, "newPassWord"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 33
    iput-object p1, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->userName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->oldPassWord:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->newPassWord:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UPDATE_PASS_WORD_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 45
    const/4 v1, 0x1

    .line 46
    .local v1, "flag":Z
    const/4 v3, 0x0

    .line 48
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "n"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->userName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "old_pwd"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->oldPassWord:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v4, "new_pwd"

    iget-object v5, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->newPassWord:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/UpdatePassWordEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 54
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 56
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->newPassWord:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/game/sdk/engin/UpdatePassWordEngin;->saveUserInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v1

    .line 58
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveUserInfo(Ljava/lang/String;)V
    .locals 8
    .param p1, "newPwd"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 76
    .local v0, "accountName":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    .line 78
    .local v3, "mobileNumber":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 81
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_0

    .line 82
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object p1, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v1

    .line 87
    .local v1, "isExist":Z
    if-nez v1, :cond_4

    .line 88
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 89
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 88
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 99
    :goto_2
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v2

    .line 100
    .local v2, "isExistAccount":Z
    if-nez v2, :cond_5

    .line 101
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 102
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 101
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 111
    :goto_3
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 112
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-static {v4, v5}, Lcom/game/sdk/utils/AccountInfoUtil;->updateUsersInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 115
    :cond_1
    return-void

    .line 74
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "isExist":Z
    .end local v2    # "isExistAccount":Z
    .end local v3    # "mobileNumber":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 76
    .restart local v0    # "accountName":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 92
    .restart local v1    # "isExist":Z
    .restart local v3    # "mobileNumber":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 94
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 95
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 94
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    .line 105
    .restart local v2    # "isExistAccount":Z
    :cond_5
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 108
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v6, v6, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    iget v7, p0, Lcom/game/sdk/engin/UpdatePassWordEngin;->accountType:I

    .line 107
    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3
.end method
