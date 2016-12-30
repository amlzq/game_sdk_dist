.class public Lcom/game/sdk/utils/NetworkImpl;
.super Ljava/lang/Object;
.source "NetworkImpl.java"


# static fields
.field public static final TIMEOUT:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x1f40

    .line 26
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isCmwapType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 32
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 33
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 34
    const v2, 0x19000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 35
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 36
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 37
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    goto :goto_0

    .line 38
    .end local v1    # "params":Lorg/apache/http/params/HttpParams;
    :cond_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 39
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 40
    .restart local v1    # "params":Lorg/apache/http/params/HttpParams;
    const-string v2, "http.connection.timeout"

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 40
    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 42
    const-string v2, "http.socket.timeout"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method private static isCmwapType(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 75
    .line 76
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, "cmr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 78
    .local v1, "netinfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "nettype":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "cmwap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    const-string v4, "3gwap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    const-string v4, "uniwap"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isNetWorkConneted(Landroid/content/Context;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 54
    .line 55
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    .local v0, "cmr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 58
    .local v2, "networkinfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 65
    .end local v0    # "cmr":Landroid/net/ConnectivityManager;
    .end local v2    # "networkinfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
