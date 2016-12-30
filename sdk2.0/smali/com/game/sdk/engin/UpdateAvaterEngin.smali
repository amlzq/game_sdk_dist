.class public Lcom/game/sdk/engin/UpdateAvaterEngin;
.super Lcom/game/sdk/engin/BaseEngin;
.source "UpdateAvaterEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/engin/BaseEngin",
        "<",
        "Lcom/game/sdk/domain/UpdateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static updateAvaterEngin:Lcom/game/sdk/engin/UpdateAvaterEngin;


# instance fields
.field public imgStr:Ljava/lang/String;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/game/sdk/engin/BaseEngin;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imgStr"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/game/sdk/engin/BaseEngin;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/game/sdk/engin/UpdateAvaterEngin;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/game/sdk/engin/UpdateAvaterEngin;->imgStr:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/UpdateAvaterEngin;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/game/sdk/engin/UpdateAvaterEngin;->updateAvaterEngin:Lcom/game/sdk/engin/UpdateAvaterEngin;

    if-nez v0, :cond_0

    .line 28
    const-class v1, Lcom/game/sdk/engin/MainModuleEngin;

    monitor-enter v1

    .line 29
    :try_start_0
    new-instance v0, Lcom/game/sdk/engin/UpdateAvaterEngin;

    invoke-direct {v0, p0}, Lcom/game/sdk/engin/UpdateAvaterEngin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/game/sdk/engin/UpdateAvaterEngin;->updateAvaterEngin:Lcom/game/sdk/engin/UpdateAvaterEngin;

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    sget-object v0, Lcom/game/sdk/engin/UpdateAvaterEngin;->updateAvaterEngin:Lcom/game/sdk/engin/UpdateAvaterEngin;

    return-object v0

    .line 28
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
    .line 50
    sget-object v0, Lcom/game/sdk/net/constans/ServerConfig;->UPDATE_USER_INFO_URL:Ljava/lang/String;

    return-object v0
.end method

.method public updateUserAvater()Z
    .locals 5

    .prologue
    .line 60
    const/4 v2, 0x1

    .line 63
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "user_id"

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v3, "face"

    iget-object v4, p0, Lcom/game/sdk/engin/UpdateAvaterEngin;->imgStr:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-class v3, Lcom/game/sdk/domain/UpdateInfo;

    new-instance v4, Lcom/game/sdk/engin/UpdateAvaterEngin$1;

    invoke-direct {v4, p0}, Lcom/game/sdk/engin/UpdateAvaterEngin$1;-><init>(Lcom/game/sdk/engin/UpdateAvaterEngin;)V

    invoke-virtual {p0, v3, v1, v4}, Lcom/game/sdk/engin/UpdateAvaterEngin;->agetResultInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
