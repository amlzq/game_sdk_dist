.class final Lcom/payeco/android/plugin/bridge/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/bridge/JsBridge;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/bridge/JsBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/bridge/a;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callBackid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/payeco/android/plugin/bridge/a;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-virtual {v3, v2, v1, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeNativeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/a;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->closeProgress()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/a;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-virtual {v1, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->showProgress(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
