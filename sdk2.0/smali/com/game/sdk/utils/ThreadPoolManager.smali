.class public Lcom/game/sdk/utils/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;
    }
.end annotation


# static fields
.field private static mThreadPollProxy:Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;
    .locals 6

    .prologue
    .line 15
    const-class v1, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/game/sdk/utils/ThreadPoolManager;->mThreadPollProxy:Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    const/4 v2, 0x3

    const/4 v3, 0x6

    const-wide/16 v4, 0x3e8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;-><init>(IIJ)V

    sput-object v0, Lcom/game/sdk/utils/ThreadPoolManager;->mThreadPollProxy:Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    .line 15
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/game/sdk/utils/ThreadPoolManager;->mThreadPollProxy:Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
