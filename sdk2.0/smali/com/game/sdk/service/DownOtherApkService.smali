.class public Lcom/game/sdk/service/DownOtherApkService;
.super Landroid/app/Service;
.source "DownOtherApkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/service/DownOtherApkService$DownLoadInfo;
    }
.end annotation


# static fields
.field private static hasStop:Z


# instance fields
.field protected MSG_STOP_SEVICE:I

.field private final MSG_UPDATE_PROGRESS:I

.field private downUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field mOkHttpClient:Lokhttp3/OkHttpClient;

.field private nm:Landroid/app/NotificationManager;

.field notifyId:I

.field private progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/game/sdk/service/DownOtherApkService;->hasStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    iput v1, p0, Lcom/game/sdk/service/DownOtherApkService;->MSG_UPDATE_PROGRESS:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/game/sdk/service/DownOtherApkService;->MSG_STOP_SEVICE:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->downUrl:Ljava/lang/String;

    .line 43
    const/16 v0, 0x6c

    iput v0, p0, Lcom/game/sdk/service/DownOtherApkService;->notifyId:I

    .line 45
    iput v1, p0, Lcom/game/sdk/service/DownOtherApkService;->progress:I

    .line 57
    new-instance v0, Lcom/game/sdk/service/DownOtherApkService$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/service/DownOtherApkService$1;-><init>(Lcom/game/sdk/service/DownOtherApkService;)V

    iput-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/game/sdk/service/DownOtherApkService;->hasStop:Z

    return v0
.end method

.method static synthetic access$1(Lcom/game/sdk/service/DownOtherApkService;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/game/sdk/service/DownOtherApkService;->progress:I

    return v0
.end method

.method static synthetic access$2(Lcom/game/sdk/service/DownOtherApkService;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/game/sdk/service/DownOtherApkService;->progress:I

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/service/DownOtherApkService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/service/DownOtherApkService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private createNotification()V
    .locals 4

    .prologue
    .line 74
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/game/sdk/service/DownOtherApkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;

    .line 75
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 77
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u6e38\u620f\u76d2\u5b50"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 78
    const-string v1, "drawable"

    const-string v2, "down_logo"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 80
    const/16 v1, 0x64

    iget v2, p0, Lcom/game/sdk/service/DownOtherApkService;->progress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/game/sdk/service/DownOtherApkService;->notifyId:I

    iget-object v2, p0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    return-void
.end method

.method public static hasStop()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/game/sdk/service/DownOtherApkService;->hasStop:Z

    return v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "client == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    iget-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 201
    return-void

    .line 193
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 194
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 197
    .end local v0    # "call":Lokhttp3/Call;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 198
    .restart local v0    # "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1
.end method

.method public getUpdateProgress()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/game/sdk/service/DownOtherApkService;->progress:I

    int-to-float v0, v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game/sdk/service/DownOtherApkService;->hasStop:Z

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/game/sdk/service/DownOtherApkService;->hasStop:Z

    .line 184
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->downUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/game/sdk/service/DownOtherApkService;->cancel(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 186
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 187
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/game/sdk/service/DownOtherApkService;->progress:I

    .line 100
    const-string v1, "downUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "downUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/game/sdk/service/DownOtherApkService;->createNotification()V

    .line 102
    const-string v1, "downUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->downUrl:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 108
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/game/sdk/service/DownOtherApkService;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/service/DownOtherApkService;->downUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 109
    .local v0, "request":Lokhttp3/Request;
    iget-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/game/sdk/service/DownOtherApkService$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/service/DownOtherApkService$2;-><init>(Lcom/game/sdk/service/DownOtherApkService;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 174
    .end local v0    # "request":Lokhttp3/Request;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/service/DownOtherApkService;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/game/sdk/service/DownOtherApkService$3;

    invoke-direct {v2, p0}, Lcom/game/sdk/service/DownOtherApkService$3;-><init>(Lcom/game/sdk/service/DownOtherApkService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setNotify(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const/16 v2, 0x64

    .line 87
    if-ne p1, v2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/game/sdk/service/DownOtherApkService;->notifyId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 92
    iget-object v0, p0, Lcom/game/sdk/service/DownOtherApkService;->nm:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/game/sdk/service/DownOtherApkService;->notifyId:I

    iget-object v2, p0, Lcom/game/sdk/service/DownOtherApkService;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
