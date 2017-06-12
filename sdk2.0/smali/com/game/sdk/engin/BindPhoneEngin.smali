.class public Lcom/game/sdk/engin/BindPhoneEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "BindPhoneEngin.java"


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
.field public mContext:Landroid/content/Context;

.field public phoneNumber:Ljava/lang/String;

.field public userName:Ljava/lang/String;

.field public validateCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "validateCode"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/game/sdk/engin/BindPhoneEngin;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/game/sdk/engin/BindPhoneEngin;->phoneNumber:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/game/sdk/engin/BindPhoneEngin;->userName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/game/sdk/engin/BindPhoneEngin;->validateCode:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->BIND_PHONE_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Lcom/game/sdk/domain/BindPhoneResult;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    new-instance v0, Lcom/game/sdk/domain/BindPhoneResult;

    invoke-direct {v0}, Lcom/game/sdk/domain/BindPhoneResult;-><init>()V

    .line 43
    .local v0, "bindPhoneResult":Lcom/game/sdk/domain/BindPhoneResult;
    iput-boolean v6, v0, Lcom/game/sdk/domain/BindPhoneResult;->result:Z

    .line 45
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "m"

    iget-object v5, p0, Lcom/game/sdk/engin/BindPhoneEngin;->phoneNumber:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v4, "n"

    iget-object v5, p0, Lcom/game/sdk/engin/BindPhoneEngin;->userName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "code"

    iget-object v5, p0, Lcom/game/sdk/engin/BindPhoneEngin;->validateCode:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/BindPhoneEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 51
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v7, :cond_0

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7ed1\u5b9a\u624b\u673a\u53f7\u7ed3\u679c----"

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
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/game/sdk/domain/BindPhoneResult;->result:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/game/sdk/domain/BindPhoneResult;->result:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 64
    return-object v0

    .line 55
    .restart local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Lcom/game/sdk/domain/BindPhoneResult;->result:Z

    .line 56
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    iput-object v4, v0, Lcom/game/sdk/domain/BindPhoneResult;->message:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 59
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v6, v0, Lcom/game/sdk/domain/BindPhoneResult;->result:Z

    goto :goto_0
.end method
