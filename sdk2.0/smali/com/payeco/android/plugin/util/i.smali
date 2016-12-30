.class final Lcom/payeco/android/plugin/util/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/util/LBSTool;


# direct methods
.method synthetic constructor <init>(Lcom/payeco/android/plugin/util/LBSTool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payeco/android/plugin/util/i;-><init>(Lcom/payeco/android/plugin/util/LBSTool;B)V

    return-void
.end method

.method private constructor <init>(Lcom/payeco/android/plugin/util/LBSTool;B)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/util/LBSTool;->unRegisterLocationListener()V

    :try_start_0
    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;
    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->access$1(Lcom/payeco/android/plugin/util/LBSTool;)Lcom/payeco/android/plugin/util/j;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    new-instance v0, Lcom/payeco/android/plugin/a/a;

    invoke-direct {v0}, Lcom/payeco/android/plugin/a/a;-><init>()V

    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->access$2(Lcom/payeco/android/plugin/a/a;)V

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;
    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->access$3()Lcom/payeco/android/plugin/a/a;

    move-result-object v0

    iput-wide v2, v0, Lcom/payeco/android/plugin/a/a;->a:D

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;
    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->access$3()Lcom/payeco/android/plugin/a/a;

    move-result-object v0

    iput-wide v4, v0, Lcom/payeco/android/plugin/a/a;->b:D

    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;
    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->access$3()Lcom/payeco/android/plugin/a/a;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/payeco/android/plugin/util/LBSTool;->saveLbsToLocal(Lcom/payeco/android/plugin/a/a;)V

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->access$4()Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;
    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->access$3()Lcom/payeco/android/plugin/a/a;

    move-result-object v6

    iget-wide v6, v6, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLocation:Lcom/payeco/android/plugin/a/a;
    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->access$3()Lcom/payeco/android/plugin/a/a;

    move-result-object v6

    iget-wide v6, v6, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->setLbsToCookieStore(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "errCode"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "errMsg"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "lng"

    invoke-virtual {v0, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "lat"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->access$5(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->access$5(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLooper:Landroid/os/Looper;
    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->access$6(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->mLBSThread:Lcom/payeco/android/plugin/util/j;
    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->access$1(Lcom/payeco/android/plugin/util/LBSTool;)Lcom/payeco/android/plugin/util/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/payeco/android/plugin/util/LBSTool;->access$7(Lcom/payeco/android/plugin/util/LBSTool;Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v1, "errCode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errMsg"

    const-string v3, "\u5b9a\u4f4d\u51fa\u9519"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lng"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lat"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adress"

    const-string v3, "\'\'"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v8, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/payeco/android/plugin/util/LBSTool;->access$5(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/payeco/android/plugin/util/i;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/payeco/android/plugin/util/LBSTool;->access$5(Lcom/payeco/android/plugin/util/LBSTool;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
