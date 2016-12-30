.class public Lcom/game/sdk/net/impls/OKHttpRequest;
.super Ljava/lang/Object;
.source "OKHttpRequest.java"

# interfaces
.implements Lcom/game/sdk/net/interfaces/IHttpRequest;


# static fields
.field public static final CONNECT_TIMEOUT:I = 0x1e

.field private static final MEDIA_TYPE:Lokhttp3/MediaType;

.field public static final READ_TIMEOUT:I = 0x3c

.field public static final WRITE_TIMEOUT:I = 0x3c

.field public static client:Lokhttp3/OkHttpClient;

.field public static httpRequest:Lcom/game/sdk/net/impls/OKHttpRequest;

.field public static picasso:Lcom/squareup/picasso/Picasso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "text/html"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/game/sdk/net/impls/OKHttpRequest;->MEDIA_TYPE:Lokhttp3/MediaType;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->initOkHttpClient()V

    .line 47
    return-void
.end method

.method private apost2(Ljava/lang/String;[BLcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [B
    .param p3, "httpResonseListener"    # Lcom/game/sdk/net/listeners/OnHttpResonseListener;
    .param p4, "encryptResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p3, :cond_0

    .line 128
    new-instance v2, Lcom/game/sdk/net/exception/NullResonseListenerException;

    invoke-direct {v2}, Lcom/game/sdk/net/exception/NullResonseListenerException;-><init>()V

    throw v2

    .line 129
    :cond_0
    sget-object v2, Lcom/game/sdk/net/impls/OKHttpRequest;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    .line 130
    .local v1, "requestBody":Lokhttp3/RequestBody;
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 131
    .local v0, "request":Lokhttp3/Request;
    invoke-direct {p0, v0, p3, p4}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V

    .line 132
    return-void
.end method

.method public static getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/game/sdk/net/impls/OKHttpRequest;->httpRequest:Lcom/game/sdk/net/impls/OKHttpRequest;

    if-nez v0, :cond_0

    .line 60
    const-class v1, Lcom/game/sdk/net/impls/OKHttpRequest;

    monitor-enter v1

    .line 61
    :try_start_0
    new-instance v0, Lcom/game/sdk/net/impls/OKHttpRequest;

    invoke-direct {v0}, Lcom/game/sdk/net/impls/OKHttpRequest;-><init>()V

    sput-object v0, Lcom/game/sdk/net/impls/OKHttpRequest;->httpRequest:Lcom/game/sdk/net/impls/OKHttpRequest;

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    sget-object v0, Lcom/game/sdk/net/impls/OKHttpRequest;->httpRequest:Lcom/game/sdk/net/impls/OKHttpRequest;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static initOkHttpClient()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3c

    .line 50
    invoke-static {}, Lcom/game/sdk/net/utils/OKHttpUtil;->getHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 51
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 52
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 53
    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 54
    new-instance v2, Lokhttp3/Cache;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/game/sdk/utils/PathUtil;->getImageDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x6400000

    invoke-direct {v2, v3, v4, v5}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 55
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    .line 56
    return-void
.end method

.method public static initPicasso(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    sget-object v1, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->initOkHttpClient()V

    .line 72
    :cond_0
    new-instance v1, Lcom/squareup/picasso/Picasso$Builder;

    invoke-direct {v1, p0}, Lcom/squareup/picasso/Picasso$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/game/sdk/net/down/ImageDownLoader;

    sget-object v3, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v2, v3}, Lcom/game/sdk/net/down/ImageDownLoader;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso$Builder;->downloader(Lcom/squareup/picasso/Downloader;)Lcom/squareup/picasso/Picasso$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Builder;->build()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 73
    .local v0, "picasso":Lcom/squareup/picasso/Picasso;
    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->setSingletonInstance(Lcom/squareup/picasso/Picasso;)V

    .line 74
    return-void
.end method

.method private sendRequest(Lokhttp3/Request;Z)Lcom/game/sdk/net/entry/Response;
    .locals 6
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "encryptResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "nresponse":Lcom/game/sdk/net/entry/Response;
    sget-object v4, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    .line 181
    .local v1, "call":Lokhttp3/Call;
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 182
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    const-string v0, ""

    .line 184
    .local v0, "body":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/net/utils/OKHttpUtil;->decodeBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-static {v4, v0}, Lcom/game/sdk/net/utils/OKHttpUtil;->setResponse(ILjava/lang/String;)Lcom/game/sdk/net/entry/Response;

    move-result-object v2

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 194
    .end local v0    # "body":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 187
    .restart local v0    # "body":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendRequest(Lokhttp3/Request;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    .locals 2
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "httpResonseListener"    # Lcom/game/sdk/net/listeners/OnHttpResonseListener;
    .param p3, "encryptResponse"    # Z

    .prologue
    .line 199
    sget-object v1, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 200
    .local v0, "call":Lokhttp3/Call;
    new-instance v1, Lcom/game/sdk/net/impls/OKHttpRequest$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/game/sdk/net/impls/OKHttpRequest$1;-><init>(Lcom/game/sdk/net/impls/OKHttpRequest;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 222
    return-void
.end method


# virtual methods
.method public aget(Ljava/lang/String;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpResonseListener"    # Lcom/game/sdk/net/listeners/OnHttpResonseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v1, Lcom/game/sdk/net/exception/NullResonseListenerException;

    invoke-direct {v1}, Lcom/game/sdk/net/exception/NullResonseListenerException;-><init>()V

    throw v1

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 107
    .local v0, "request":Lokhttp3/Request;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V

    .line 108
    return-void
.end method

.method public apost(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "httpResonseListener"    # Lcom/game/sdk/net/listeners/OnHttpResonseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/OnHttpResonseListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/game/sdk/net/utils/OKHttpUtil;->encodeParams(Ljava/util/Map;)[B

    move-result-object v0

    .line 114
    .local v0, "data":[B
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost2(Ljava/lang/String;[BLcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V

    .line 115
    return-void
.end method

.method public apost2(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "httpResonseListener"    # Lcom/game/sdk/net/listeners/OnHttpResonseListener;
    .param p4, "encryptResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/OnHttpResonseListener;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2, p4}, Lcom/game/sdk/net/utils/OKHttpUtil;->encodeParams(Ljava/util/Map;Z)[B

    move-result-object v0

    .line 122
    .local v0, "data":[B
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost2(Ljava/lang/String;[BLcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V

    .line 123
    return-void
.end method

.method public auploadFile(Ljava/lang/String;Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "upFileInfo"    # Lcom/game/sdk/net/entry/UpFileInfo;
    .param p4, "httpResonseListener"    # Lcom/game/sdk/net/listeners/OnHttpResonseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/game/sdk/net/entry/UpFileInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/OnHttpResonseListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation

    .prologue
    .line 150
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 151
    new-instance v2, Lcom/game/sdk/net/exception/NullResonseListenerException;

    invoke-direct {v2}, Lcom/game/sdk/net/exception/NullResonseListenerException;-><init>()V

    throw v2

    .line 153
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/game/sdk/net/entry/UpFileInfo;->file:Ljava/io/File;

    if-nez v2, :cond_2

    .line 154
    :cond_1
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file == null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_2
    invoke-static {p2, p3}, Lcom/game/sdk/net/utils/OKHttpUtil;->setBuilder(Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 158
    .local v1, "requestBody":Lokhttp3/MultipartBody;
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 160
    .local v0, "request":Lokhttp3/Request;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p4, v2}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V

    .line 161
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    sget-object v1, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "client == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    sget-object v1, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

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

    .line 172
    sget-object v1, Lcom/game/sdk/net/impls/OKHttpRequest;->client:Lokhttp3/OkHttpClient;

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

    .line 176
    return-void

    .line 168
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 169
    .local v0, "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 172
    .end local v0    # "call":Lokhttp3/Call;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 173
    .restart local v0    # "call":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Lcom/game/sdk/net/entry/Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 78
    .local v0, "request":Lokhttp3/Request;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Z)Lcom/game/sdk/net/entry/Response;

    move-result-object v1

    return-object v1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;)Lcom/game/sdk/net/entry/Response;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game/sdk/net/entry/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/game/sdk/net/utils/OKHttpUtil;->setBuilder(Ljava/util/Map;)Lokhttp3/FormBody$Builder;

    move-result-object v0

    .line 84
    .local v0, "builder":Lokhttp3/FormBody$Builder;
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 85
    .local v1, "request":Lokhttp3/Request;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Z)Lcom/game/sdk/net/entry/Response;

    move-result-object v2

    return-object v2
.end method

.method public post(Ljava/lang/String;[BZ)Lcom/game/sdk/net/entry/Response;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "encryptResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v2, Lcom/game/sdk/net/impls/OKHttpRequest;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-static {v2, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    .line 90
    .local v1, "requestBody":Lokhttp3/RequestBody;
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 91
    .local v0, "request":Lokhttp3/Request;
    invoke-direct {p0, v0, p3}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Z)Lcom/game/sdk/net/entry/Response;

    move-result-object v2

    return-object v2
.end method

.method public post2(Ljava/lang/String;Ljava/util/Map;Z)Lcom/game/sdk/net/entry/Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "encryptResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/game/sdk/net/entry/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/game/sdk/net/exception/NullResonseListenerException;
        }
    .end annotation

    .prologue
    .line 97
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2, p3}, Lcom/game/sdk/net/utils/OKHttpUtil;->encodeParams(Ljava/util/Map;Z)[B

    move-result-object v0

    .line 98
    .local v0, "data":[B
    invoke-virtual {p0, p1, v0, p3}, Lcom/game/sdk/net/impls/OKHttpRequest;->post(Ljava/lang/String;[BZ)Lcom/game/sdk/net/entry/Response;

    move-result-object v1

    return-object v1
.end method

.method public uploadFile(Ljava/lang/String;Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;)Lcom/game/sdk/net/entry/Response;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "upFileInfo"    # Lcom/game/sdk/net/entry/UpFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/game/sdk/net/entry/UpFileInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game/sdk/net/entry/Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/game/sdk/net/entry/UpFileInfo;->file:Ljava/io/File;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "file is null"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_1
    invoke-static {p2, p3}, Lcom/game/sdk/net/utils/OKHttpUtil;->setBuilder(Lcom/game/sdk/net/entry/UpFileInfo;Ljava/util/Map;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 142
    .local v1, "requestBody":Lokhttp3/MultipartBody;
    invoke-static {p1}, Lcom/game/sdk/net/utils/OKHttpUtil;->getRequestBuilder(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 144
    .local v0, "request":Lokhttp3/Request;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Z)Lcom/game/sdk/net/entry/Response;

    move-result-object v2

    return-object v2
.end method
