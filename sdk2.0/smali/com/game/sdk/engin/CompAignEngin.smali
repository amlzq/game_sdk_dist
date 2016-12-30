.class public Lcom/game/sdk/engin/CompAignEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "CompAignEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/CompAignList;",
        ">;"
    }
.end annotation


# static fields
.field private static compAignEngin:Lcom/game/sdk/engin/CompAignEngin;


# instance fields
.field public mContext:Landroid/content/Context;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/game/sdk/engin/CompAignEngin;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/game/sdk/engin/CompAignEngin;->userId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/CompAignEngin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/game/sdk/engin/CompAignEngin;->compAignEngin:Lcom/game/sdk/engin/CompAignEngin;

    if-nez v0, :cond_0

    .line 26
    const-class v1, Lcom/game/sdk/engin/MainModuleEngin;

    monitor-enter v1

    .line 27
    :try_start_0
    new-instance v0, Lcom/game/sdk/engin/CompAignEngin;

    invoke-direct {v0, p0}, Lcom/game/sdk/engin/CompAignEngin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/engin/CompAignEngin;->compAignEngin:Lcom/game/sdk/engin/CompAignEngin;

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    sget-object v0, Lcom/game/sdk/engin/CompAignEngin;->compAignEngin:Lcom/game/sdk/engin/CompAignEngin;

    return-object v0

    .line 26
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
    .line 45
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->COMPAIGN_LIST_URL:Ljava/lang/String;

    return-object v0
.end method

.method public run()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CompAign;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CompAign;>;"
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "user_id"

    iget-object v5, p0, Lcom/game/sdk/engin/CompAignEngin;->userId:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/4 v4, 0x1

    const-class v5, Lcom/game/sdk/domain/CompAignList;

    invoke-virtual {p0, v4, v5, v2}, Lcom/game/sdk/engin/CompAignEngin;->getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v3

    .line 55
    .local v3, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CompAignList;>;"
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v4, v6, :cond_0

    .line 56
    iget-object v4, v3, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v4, Lcom/game/sdk/domain/CompAignList;

    iget-object v1, v4, Lcom/game/sdk/domain/CompAignList;->list:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/CompAignList;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CompAignEngin---\u83b7\u53d6\u6570\u636e\u9519\u8bef"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method
