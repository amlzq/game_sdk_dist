.class public Lcom/game/sdk/engin/MainModuleEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "MainModuleEngin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/MainModuleEngin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/game/sdk/engin/MainModuleEngin;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    if-nez v0, :cond_0

    .line 35
    const-class v1, Lcom/game/sdk/engin/MainModuleEngin;

    monitor-enter v1

    .line 36
    :try_start_0
    new-instance v0, Lcom/game/sdk/engin/MainModuleEngin;

    invoke-direct {v0, p0}, Lcom/game/sdk/engin/MainModuleEngin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/engin/MainModuleEngin;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    sget-object v0, Lcom/game/sdk/engin/MainModuleEngin;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    return-object v0

    .line 35
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
            "Lcom/game/sdk/domain/ModuleList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<Lcom/game/sdk/domain/ModuleList;>;"
    if-nez p2, :cond_0

    .line 73
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 76
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/engin/MainModuleEngin;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/engin/MainModuleEngin$2;

    invoke-direct {v3, p0, p3}, Lcom/game/sdk/engin/MainModuleEngin$2;-><init>(Lcom/game/sdk/engin/MainModuleEngin;Lcom/game/sdk/net/listeners/Callback;)V

    invoke-virtual {v1, v2, p2, v3, p1}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost2(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
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

.method public getModuleInfoList(ILcom/game/sdk/net/listeners/Callback;)V
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/game/sdk/net/listeners/Callback",
            "<",
            "Lcom/game/sdk/domain/ModuleList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<Lcom/game/sdk/domain/ModuleList;>;"
    new-instance v1, Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;

    invoke-direct {v1}, Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;-><init>()V

    .line 65
    .local v1, "paramsInfo":Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;
    iput p1, v1, Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;->page:I

    .line 66
    invoke-virtual {p0, v1}, Lcom/game/sdk/engin/MainModuleEngin;->getParams(Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;)Ljava/util/HashMap;

    move-result-object v0

    .line 67
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, p2}, Lcom/game/sdk/engin/MainModuleEngin;->agetResultInfo(ZLjava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V

    .line 68
    return-void
.end method

.method public getParams(Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;)Ljava/util/HashMap;
    .locals 3
    .param p1, "paramsInfo"    # Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/engin/MainModuleEngin$ParamsInfo;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/engin/MainModuleEngin$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/engin/MainModuleEngin$1;-><init>(Lcom/game/sdk/engin/MainModuleEngin;)V

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
    .line 44
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->MAIN_MODULE_URL:Ljava/lang/String;

    return-object v0
.end method
