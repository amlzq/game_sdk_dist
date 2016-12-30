.class final Lcom/payeco/android/plugin/util/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/util/LBSTool;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/util/LBSTool;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/g;->a:Lcom/payeco/android/plugin/util/LBSTool;

    iput-object p2, p0, Lcom/payeco/android/plugin/util/g;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    :try_start_0
    iget-object v1, p0, Lcom/payeco/android/plugin/util/g;->a:Lcom/payeco/android/plugin/util/LBSTool;

    # getter for: Lcom/payeco/android/plugin/util/LBSTool;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;
    invoke-static {v1}, Lcom/payeco/android/plugin/util/LBSTool;->access$8(Lcom/payeco/android/plugin/util/LBSTool;)Lcom/payeco/android/plugin/bridge/JsBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/util/g;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "errCode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "errMsg"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "lng"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "lat"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
