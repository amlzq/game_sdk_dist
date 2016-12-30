.class public Lcom/game/sdk/engin/CompAignDetailEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "CompAignDetailEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/CompAignDetail;",
        ">;"
    }
.end annotation


# static fields
.field private static compAignEngin:Lcom/game/sdk/engin/CompAignDetailEngin;


# instance fields
.field public aid:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aid"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/game/sdk/engin/CompAignDetailEngin;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/game/sdk/engin/CompAignDetailEngin;->aid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/CompAignDetailEngin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/game/sdk/engin/CompAignDetailEngin;->compAignEngin:Lcom/game/sdk/engin/CompAignDetailEngin;

    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcom/game/sdk/engin/MainModuleEngin;

    monitor-enter v1

    .line 25
    :try_start_0
    new-instance v0, Lcom/game/sdk/engin/CompAignDetailEngin;

    invoke-direct {v0, p0}, Lcom/game/sdk/engin/CompAignDetailEngin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/engin/CompAignDetailEngin;->compAignEngin:Lcom/game/sdk/engin/CompAignDetailEngin;

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    sget-object v0, Lcom/game/sdk/engin/CompAignDetailEngin;->compAignEngin:Lcom/game/sdk/engin/CompAignDetailEngin;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->COMPAIGN_DETAIL_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Lcom/game/sdk/domain/CompAignDetail;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "compAignDetail":Lcom/game/sdk/domain/CompAignDetail;
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "activity_id"

    iget-object v6, p0, Lcom/game/sdk/engin/CompAignDetailEngin;->aid:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v5, 0x1

    const-class v6, Lcom/game/sdk/domain/CompAignDetail;

    invoke-virtual {p0, v5, v6, v3}, Lcom/game/sdk/engin/CompAignDetailEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v4

    .line 53
    .local v4, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CompAignDetail;>;"
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v5, v7, :cond_0

    .line 54
    iget-object v5, v4, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lcom/game/sdk/domain/CompAignDetail;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CompAignDetail;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CompAignDetailEngin---\u83b7\u53d6\u6570\u636e\u9519\u8bef"

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method
