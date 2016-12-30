.class public Lcom/game/sdk/engin/PayCoinEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "PayCoinEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/CoinInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/game/sdk/engin/PayCoinEngin;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/game/sdk/engin/PayCoinEngin;->userId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private saveCouponInfoList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CouponInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "couponInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CouponInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 77
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "moduleStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save--couponInfoList---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v2, p0, Lcom/game/sdk/engin/PayCoinEngin;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v1    # "moduleStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->PAY_INIT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "user_id"

    iget-object v5, p0, Lcom/game/sdk/engin/PayCoinEngin;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/CoinInfo;

    invoke-virtual {p0, v4, v5, v1}, Lcom/game/sdk/engin/PayCoinEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 47
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CoinInfo;>;"
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_1

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "payinit\u83b7\u53d6\u7ed3\u679c----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 50
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 51
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/CoinInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/CoinInfo;->money:Ljava/lang/String;

    iput-object v4, v5, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    .line 52
    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/CoinInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/CoinInfo;->gameMoney:Ljava/lang/String;

    iput-object v4, v5, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    .line 53
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/CoinInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/CoinInfo;->couponList:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 54
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/CoinInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/CoinInfo;->couponList:Ljava/util/List;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->couponList:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Lcom/game/sdk/engin/PayCoinEngin;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/CoinInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/CoinInfo;->couponList:Ljava/util/List;

    invoke-direct {p0, v5, v4}, Lcom/game/sdk/engin/PayCoinEngin;->saveCouponInfoList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    const/4 v2, 0x1

    .line 66
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CoinInfo;>;"
    :goto_0
    return v2

    .line 61
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CoinInfo;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 63
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CoinInfo;>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
