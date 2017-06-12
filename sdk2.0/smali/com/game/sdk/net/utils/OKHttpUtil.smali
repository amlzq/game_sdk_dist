.class public final Lcom/game/sdk/net/utils/OKHttpUtil;
.super Ljava/lang/Object;
.source "OKHttpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBody(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/game/sdk/utils/EncryptUtil;->unzip(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/security/Encrypt;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParams(Ljava/util/Map;)[B
    .locals 4
    .param p0, "params"    # Ljava/util/Map;

    .prologue
    .line 125
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/game/sdk/net/utils/OKHttpUtil;->setDefaultParams(Ljava/util/Map;Z)V

    .line 126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 127
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "jsonStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5ba2\u6237\u7aef\u8bf7\u6c42\u6570\u636e->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 129
    invoke-static {v1}, Lcom/game/sdk/utils/EncryptUtil;->compress(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static encodeParams(Ljava/util/Map;Z)[B
    .locals 4
    .param p0, "params"    # Ljava/util/Map;
    .param p1, "encryptResponse"    # Z

    .prologue
    .line 111
    invoke-static {p0, p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->setDefaultParams(Ljava/util/Map;Z)V

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 113
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "jsonStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5ba2\u6237\u7aef\u8bf7\u6c42\u6570\u636e->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 115
    invoke-static {v1}, Lcom/game/sdk/utils/EncryptUtil;->rsa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/game/sdk/utils/EncryptUtil;->compress(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public static getHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x2710

    .line 47
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 48
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 49
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    return-object v0
.end method

.method public static getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/p/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5ba2\u6237\u7aef\u8bf7\u6c42url->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 41
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 43
    .local v0, "builder":Lokhttp3/Request$Builder;
    return-object v0

    .line 36
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/p/67"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static setBuilder(Ljava/util/Map;)Lokhttp3/FormBody$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/FormBody$Builder;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/game/sdk/net/utils/OKHttpUtil;->setDefaultParams(Ljava/util/Map;Z)V

    .line 62
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 63
    .local v0, "builder":Lokhttp3/FormBody$Builder;
    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 70
    :cond_0
    return-object v0

    .line 64
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 67
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0
.end method

.method public static setBuilder(Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;)Lokhttp3/MultipartBody$Builder;
    .locals 8
    .param p0, "upFileInfo"    # Lcom/game/sdk/net/entry/UpFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/net/entry/UpFileInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/MultipartBody$Builder;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/game/sdk/net/utils/OKHttpUtil;->setDefaultParams(Ljava/util/Map;Z)V

    .line 88
    new-instance v4, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v4}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 89
    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v4, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 90
    .local v0, "builder":Lokhttp3/MultipartBody$Builder;
    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/net/entry/UpFileInfo;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/net/entry/UpFileInfo;->filename:Ljava/lang/String;

    .line 98
    const-string v6, "multipart/form-data"

    .line 97
    invoke-static {v6}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v6

    .line 99
    iget-object v7, p0, Lcom/game/sdk/net/entry/UpFileInfo;->file:Ljava/io/File;

    .line 97
    invoke-static {v6, v7}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 100
    return-object v0

    .line 91
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0
.end method

.method private static setDefaultParams(Ljava/util/Map;Z)V
    .locals 2
    .param p1, "encryptResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 76
    const-string v0, "g"

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "ts"

    invoke-static {}, Lcom/game/sdk/utils/Util;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "a"

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "d"

    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "4"

    :goto_0
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "i"

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->imei:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "sv"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "version"

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    const-string v0, "2"

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method public static setResponse(ILjava/lang/String;)Lcom/game/sdk/net/entry/Response;
    .locals 1
    .param p0, "code"    # I
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/game/sdk/net/entry/Response;

    invoke-direct {v0}, Lcom/game/sdk/net/entry/Response;-><init>()V

    .line 55
    .local v0, "response":Lcom/game/sdk/net/entry/Response;
    iput p0, v0, Lcom/game/sdk/net/entry/Response;->code:I

    .line 56
    iput-object p1, v0, Lcom/game/sdk/net/entry/Response;->body:Ljava/lang/String;

    .line 57
    return-object v0
.end method
