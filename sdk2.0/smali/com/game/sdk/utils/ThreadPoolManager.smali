.class public Lcom/game/sdk/utils/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static tpm:Lcom/game/sdk/utils/ThreadPoolManager;


# instance fields
.field private service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 17
    .local v0, "num":I
    mul-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/utils/ThreadPoolManager;->service:Ljava/util/concurrent/ExecutorService;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/game/sdk/utils/ThreadPoolManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/game/sdk/utils/ThreadPoolManager;->tpm:Lcom/game/sdk/utils/ThreadPoolManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/game/sdk/utils/ThreadPoolManager;

    invoke-direct {v0}, Lcom/game/sdk/utils/ThreadPoolManager;-><init>()V

    sput-object v0, Lcom/game/sdk/utils/ThreadPoolManager;->tpm:Lcom/game/sdk/utils/ThreadPoolManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/game/sdk/utils/ThreadPoolManager;->tpm:Lcom/game/sdk/utils/ThreadPoolManager;

    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/game/sdk/utils/ThreadPoolManager;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 29
    return-void
.end method
