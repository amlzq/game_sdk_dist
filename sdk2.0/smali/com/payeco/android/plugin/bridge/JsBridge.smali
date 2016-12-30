.class public Lcom/payeco/android/plugin/bridge/JsBridge;
.super Ljava/lang/Object;


# instance fields
.field private context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

.field protected jsBacks:Ljava/util/Map;

.field private jsResultId:I

.field public mCreditKeyboard:Lcom/payeco/android/plugin/f/d;

.field public mKeyboard:Lcom/payeco/android/plugin/f/l;

.field public mRecord:Lcom/payeco/android/plugin/f/s;

.field private mWebView:Landroid/webkit/WebView;

.field private payecoRecord:Lcom/payeco/android/plugin/e/a;

.field private webViewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsBacks:Ljava/util/Map;

    iput-object p1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    iput-object p2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/payeco/android/plugin/bridge/a;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/bridge/a;-><init>(Lcom/payeco/android/plugin/bridge/JsBridge;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->webViewHandler:Landroid/os/Handler;

    sget-object v0, Lcom/payeco/android/plugin/h;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/payeco/android/plugin/e/a;->a(Ljava/lang/String;)Lcom/payeco/android/plugin/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->payecoRecord:Lcom/payeco/android/plugin/e/a;

    return-void
.end method

.method public static varargs getParam([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getResult(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "errCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "errMsg"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setError(Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "errCode"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "errMsg"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    :try_start_0
    const-string v0, "name"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "callBackid"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->webViewHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeProgress()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1"

    goto :goto_0
.end method

.method public des(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "pw"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "encFlag"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "errMsg"

    const-string v2, "3DES\u52a0\u5bc6\u6216\u89e3\u5bc6\u51fa\u9519"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errCode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_2
    sget-object v3, Lcom/payeco/android/plugin/i;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/payeco/android/plugin/util/m;->a(Ljava/lang/String;)[B

    move-result-object v3

    if-ne v1, v4, :cond_2

    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/payeco/android/plugin/b/g;->a([B[B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/payeco/android/plugin/util/m;->a([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    invoke-static {v2}, Lcom/payeco/android/plugin/util/m;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/payeco/android/plugin/b/g;->b([B[B)[B

    move-result-object v1

    const-string v2, "data"

    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public varargs exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/payeco/android/plugin/bridge/JsBridge;->getParam([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:funcs["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:funcs["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exeNativeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public execJavaScript(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aget-object v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    aget-object v1, v1, v4

    new-instance v2, Lcom/payeco/android/plugin/bridge/d;

    invoke-direct {v2, p0}, Lcom/payeco/android/plugin/bridge/d;-><init>(Lcom/payeco/android/plugin/bridge/JsBridge;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exejsMethod(Ljava/lang/String;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/e;)V

    return-void
.end method

.method public exejsMethod(Ljava/lang/String;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/e;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " function(data){mybridge.sendResultToNative(JSON.stringify(data),"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsResultId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsBacks:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsResultId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsResultId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsResultId:I

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public exitPlugin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/i;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {}, Lcom/payeco/android/plugin/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevInfo()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "Mac"

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v2}, Lcom/payeco/android/plugin/util/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "MobileOS"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "OsVer"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Factory"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Imsi"

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Imei"

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v2}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "IsRoot"

    invoke-static {}, Lcom/payeco/android/plugin/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    const-string v2, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u51fa\u73b0\u9519\u8bef"

    invoke-direct {p0, v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->setError(Lorg/json/JSONObject;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/i;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginAppVerInfo()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "pluginAppVerCode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pluginAppVer"

    const-string v2, "1.3.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    const-string v2, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u51fa\u73b0\u9519\u8bef"

    invoke-direct {p0, v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->setError(Lorg/json/JSONObject;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/payeco/android/plugin/util/d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/payeco/android/plugin/util/d;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0
.end method

.method public getSynLBS()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/payeco/android/plugin/util/LBSTool;->getLocation()Lcom/payeco/android/plugin/a/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u83b7\u53d6\u6210\u529f"

    invoke-direct {p0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "LbsLat"

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "LbsLon"

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lbs"

    iget-object v3, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230LBS\u4fe1\u606f"

    invoke-direct {p0, v1, v6, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->setError(Lorg/json/JSONObject;ILjava/lang/String;)V

    new-instance v0, Lcom/payeco/android/plugin/util/LBSTool;

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {v0, v2}, Lcom/payeco/android/plugin/util/LBSTool;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/payeco/android/plugin/util/LBSTool;->startQuryLocation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/LBSTool;->getLbsLocal(Landroid/content/Context;)Lcom/payeco/android/plugin/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    const-string v2, "LbsLat"

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "LbsLon"

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lbs"

    iget-object v3, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->b:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/payeco/android/plugin/a/a;->a:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230LBS\u4fe1\u606f"

    invoke-direct {p0, v1, v6, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->setError(Lorg/json/JSONObject;ILjava/lang/String;)V

    new-instance v0, Lcom/payeco/android/plugin/util/LBSTool;

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {v0, v2}, Lcom/payeco/android/plugin/util/LBSTool;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/payeco/android/plugin/util/LBSTool;->startQuryLocation()V

    goto :goto_0
.end method

.method public goBack()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mKeyboard:Lcom/payeco/android/plugin/f/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mKeyboard:Lcom/payeco/android/plugin/f/l;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mKeyboard:Lcom/payeco/android/plugin/f/l;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/l;->dismiss()V

    const-string v0, "\u9000\u51fa\u5bc6\u7801\u952e\u76d8"

    invoke-direct {p0, v1, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mCreditKeyboard:Lcom/payeco/android/plugin/f/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mCreditKeyboard:Lcom/payeco/android/plugin/f/d;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mCreditKeyboard:Lcom/payeco/android/plugin/f/d;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/d;->dismiss()V

    const-string v0, "\u9000\u51fa\u4fe1\u7528\u5361\u952e\u76d8"

    invoke-direct {p0, v1, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "pageBack"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exejsMethod(Ljava/lang/String;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/e;)V

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public gotoLbsSetting()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "\u83b7\u53d6\u6210\u529f"

    invoke-direct {p0, v0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->getResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v2, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public htmlContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sput-object p1, Lcom/payeco/android/plugin/h;->g:Ljava/lang/String;

    sget-object v0, Lcom/payeco/android/plugin/h;->f:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, ""

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public notify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/payeco/android/plugin/bridge/c;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/bridge/c;-><init>(Lcom/payeco/android/plugin/bridge/JsBridge;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    sget-object v0, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com.payeco.plugin.payend.broadcast"

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "upPay.Rsp"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1"

    goto :goto_0
.end method

.method public repay()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->repay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "1"

    goto :goto_0
.end method

.method public sendResultToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->jsBacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/payeco/android/plugin/bridge/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/payeco/android/plugin/bridge/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {}, Lcom/payeco/android/plugin/i;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "payeco_plugin_config.js"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1"

    goto :goto_0
.end method

.method public setKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-static {v2}, Lcom/payeco/android/plugin/i;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->savePublicKeys(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1"

    goto :goto_0
.end method

.method public showProgress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    const/4 v0, 0x0

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "text"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "isCancel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "isCancel"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v2, v1, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "1"

    goto :goto_0
.end method

.method public startCreditKeyboard(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "minlen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "maxlen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getLl_web()Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v2, p3

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/payeco/android/plugin/f/d;->a(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Landroid/view/View;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;IILjava/lang/String;)Lcom/payeco/android/plugin/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mCreditKeyboard:Lcom/payeco/android/plugin/f/d;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u52a0\u5bc6\u5931\u8d25"

    aput-object v1, v0, v7

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startHxKeyBoard(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "minlen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "maxlen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "xEnabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v1, "formatFlag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v1, "defaultVal"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcom/payeco/android/plugin/f/b;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    if-eqz v6, :cond_0

    move v6, v10

    :goto_0
    move-object v8, p3

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/payeco/android/plugin/f/b;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;ZZLjava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;)V

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/f/b;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move v6, v11

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "test"

    const-string v2, "\u8f93\u5165\u6709\u8bef"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    const-string v1, "\u8f93\u5165\u6709\u8bef\uff01"

    aput-object v1, v0, v11

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public startKeyBoard(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "minlen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "maxlen"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getLl_web()Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v2, p3

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/payeco/android/plugin/f/l;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;IILjava/lang/String;)Lcom/payeco/android/plugin/f/l;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mKeyboard:Lcom/payeco/android/plugin/f/l;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u52a0\u5bc6\u5931\u8d25"

    aput-object v1, v0, v7

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startPlay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->payecoRecord:Lcom/payeco/android/plugin/e/a;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/e/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startRecord(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->payecoRecord:Lcom/payeco/android/plugin/e/a;

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0, p1}, Lcom/payeco/android/plugin/e/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startRecord(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "recordTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    iget-object v2, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getLl_web()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {v1, v2, p3, p0, v0}, Lcom/payeco/android/plugin/f/s;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;I)Lcom/payeco/android/plugin/f/s;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->mRecord:Lcom/payeco/android/plugin/f/s;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "\u52a0\u5bc6\u5931\u8d25"

    aput-object v1, v0, v3

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopPlay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->payecoRecord:Lcom/payeco/android/plugin/e/a;

    invoke-static {}, Lcom/payeco/android/plugin/e/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopRecord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->payecoRecord:Lcom/payeco/android/plugin/e/a;

    invoke-static {}, Lcom/payeco/android/plugin/e/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "closeProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->webViewHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "{errCode:100,errMsg:\'\u8c03\u7528\u539f\u751f\u65b9\u6cd5\u51fa\u9519\'}"

    goto :goto_0
.end method

.method public syn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "showProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->webViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "{errCode:100,errMsg:\'\u8c03\u7528\u539f\u751f\u65b9\u6cd5\u51fa\u9519\'}"

    goto :goto_0
.end method

.method public takePictrue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v0, p3}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->doTakePhoto(Ljava/lang/String;)V

    return-void
.end method

.method public takeVedio(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "vedioTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-virtual {v1, v0, p3}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->doTakeVedio(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public upFile(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6ca1\u6709\u6307\u5b9a\u4e0a\u4f20\u7684\u6587\u4ef6"

    aput-object v2, v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u6ca1\u6709\u6307\u5b9a\u4e0a\u4f20\u7684\u670d\u52a1\u5668\u8def\u5f84"

    aput-object v2, v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v7

    invoke-virtual {p0, p3, v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v0, "fileName"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/payeco/android/plugin/util/b;

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payeco/android/plugin/bridge/JsBridge;->context:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {v2, v3, v4}, Lcom/payeco/android/plugin/util/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const-string v3, "upfile"

    invoke-virtual {v2, v3}, Lcom/payeco/android/plugin/util/b;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lcom/payeco/android/plugin/util/b;->a(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/payeco/android/plugin/bridge/b;

    invoke-direct {v0, p0, p3}, Lcom/payeco/android/plugin/bridge/b;-><init>(Lcom/payeco/android/plugin/bridge/JsBridge;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/l;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "fileName"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "url"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/payeco/android/plugin/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
