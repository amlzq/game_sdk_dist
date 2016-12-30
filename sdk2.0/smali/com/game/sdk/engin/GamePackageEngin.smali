.class public Lcom/game/sdk/engin/GamePackageEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "GamePackageEngin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;
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
.field private static gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;


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

.method public static getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/GamePackageEngin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v0, Lcom/game/sdk/engin/GamePackageEngin;->gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;

    if-nez v0, :cond_0

    .line 36
    const-class v1, Lcom/game/sdk/engin/MainModuleEngin;

    monitor-enter v1

    .line 37
    :try_start_0
    new-instance v0, Lcom/game/sdk/engin/GamePackageEngin;

    invoke-direct {v0, p0}, Lcom/game/sdk/engin/GamePackageEngin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/engin/GamePackageEngin;->gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    sget-object v0, Lcom/game/sdk/engin/GamePackageEngin;->gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;

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
            "Lcom/game/sdk/domain/GamePackageList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<Lcom/game/sdk/domain/GamePackageList;>;"
    if-nez p2, :cond_0

    .line 74
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/engin/GamePackageEngin;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/engin/GamePackageEngin$2;

    invoke-direct {v3, p0, p3}, Lcom/game/sdk/engin/GamePackageEngin$2;-><init>(Lcom/game/sdk/engin/GamePackageEngin;Lcom/game/sdk/net/listeners/Callback;)V

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost2(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
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

.method public getParams(Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;)Ljava/util/HashMap;
    .locals 3
    .param p1, "paramsInfo"    # Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;",
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

    new-instance v1, Lcom/game/sdk/engin/GamePackageEngin$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/engin/GamePackageEngin$1;-><init>(Lcom/game/sdk/engin/GamePackageEngin;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getScoreGameList(Ljava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/game/sdk/net/listeners/Callback",
            "<",
            "Lcom/game/sdk/domain/GamePackageList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<Lcom/game/sdk/domain/GamePackageList;>;"
    new-instance v1, Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;

    invoke-direct {v1}, Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;-><init>()V

    .line 65
    .local v1, "paramsInfo":Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;
    iput-object p1, v1, Lcom/game/sdk/engin/GamePackageEngin$ParamsInfo;->userId:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "page"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, p2}, Lcom/game/sdk/engin/GamePackageEngin;->agetResultInfo(ZLjava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V

    .line 69
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->GAME_PACKAGE_LIST_URL:Ljava/lang/String;

    return-object v0
.end method
