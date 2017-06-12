.class public Lcom/game/sdk/engin/ChargeRecordEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "ChargeRecordEngin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/GameCoin;",
        ">;"
    }
.end annotation


# static fields
.field private static chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/ChargeRecordEngin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/game/sdk/engin/ChargeRecordEngin;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    if-nez v0, :cond_0

    .line 36
    const-class v1, Lcom/game/sdk/engin/MainModuleEngin;

    monitor-enter v1

    .line 37
    :try_start_0
    new-instance v0, Lcom/game/sdk/engin/ChargeRecordEngin;

    invoke-direct {v0, p0}, Lcom/game/sdk/engin/ChargeRecordEngin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/engin/ChargeRecordEngin;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    sget-object v0, Lcom/game/sdk/engin/ChargeRecordEngin;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public agetResultInfo(ZLjava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V
    .locals 4
    .param p1, "encodeResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/Callback",
            "<",
            "Lcom/game/sdk/domain/ChargeRecordList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<Lcom/game/sdk/domain/ChargeRecordList;>;"
    if-nez p2, :cond_0

    .line 75
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 78
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/engin/ChargeRecordEngin;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/engin/ChargeRecordEngin$2;

    invoke-direct {v3, p0, p3}, Lcom/game/sdk/engin/ChargeRecordEngin$2;-><init>(Lcom/game/sdk/engin/ChargeRecordEngin;Lcom/game/sdk/net/listeners/Callback;)V

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost2(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agetResultInfo\u5f02\u5e38->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getChargeRecordList(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V
    .locals 5
    .param p1, "isAllGame"    # I
    .param p2, "orderState"    # I
    .param p3, "page"    # I
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "startTime"    # Ljava/lang/String;
    .param p6, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/game/sdk/net/listeners/Callback",
            "<",
            "Lcom/game/sdk/domain/ChargeRecordList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p7, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<Lcom/game/sdk/domain/ChargeRecordList;>;"
    new-instance v1, Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;

    invoke-direct {v1}, Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;-><init>()V

    .line 59
    .local v1, "paramsInfo":Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;
    iput-object p4, v1, Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;->userId:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "page"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v2, "user_id"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v2, "start_time"

    invoke-interface {v0, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v2, "end_time"

    invoke-interface {v0, v2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "is_all_game"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v2, "order_status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, p7}, Lcom/game/sdk/engin/ChargeRecordEngin;->agetResultInfo(ZLjava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V

    .line 70
    return-void
.end method

.method public getParams(Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;)Ljava/util/HashMap;
    .locals 3
    .param p1, "paramsInfo"    # Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/engin/ChargeRecordEngin$ParamsInfo;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/engin/ChargeRecordEngin$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/engin/ChargeRecordEngin$1;-><init>(Lcom/game/sdk/engin/ChargeRecordEngin;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->CHARGE_LIST_URL:Ljava/lang/String;

    return-object v0
.end method
