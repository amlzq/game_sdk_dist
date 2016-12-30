.class final Lcom/payeco/android/plugin/bridge/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/payeco/android/plugin/util/l;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/bridge/JsBridge;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/bridge/JsBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/bridge/b;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    iput-object p2, p0, Lcom/payeco/android/plugin/bridge/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/b;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/b;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->a()V

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/b;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/b;->b:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "errCode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "errMsg"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "fileName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/b;->a:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/b;->b:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
