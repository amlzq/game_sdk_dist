.class public Lcom/game/sdk/net/down/ImageDownLoader;
.super Ljava/lang/Object;
.source "ImageDownLoader.java"

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# instance fields
.field client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/net/down/ImageDownLoader;->client:Lokhttp3/OkHttpClient;

    .line 21
    iput-object p1, p0, Lcom/game/sdk/net/down/ImageDownLoader;->client:Lokhttp3/OkHttpClient;

    .line 22
    return-void
.end method


# virtual methods
.method public load(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$Response;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "networkPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "cacheControl":Lokhttp3/CacheControl;
    if-eqz p2, :cond_0

    .line 29
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->isOfflineOnly(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30
    sget-object v1, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 43
    :cond_0
    :goto_0
    new-instance v6, Lokhttp3/Request$Builder;

    invoke-direct {v6}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 44
    .local v0, "builder":Lokhttp3/Request$Builder;
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 48
    :cond_1
    iget-object v6, p0, Lcom/game/sdk/net/down/ImageDownLoader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 49
    .local v3, "response":Lokhttp3/Response;
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v5

    .line 50
    .local v5, "responseCode":I
    const/16 v6, 0x12c

    if-lt v5, v6, :cond_5

    .line 51
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->close()V

    .line 52
    new-instance v6, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, p2, v5}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;II)V

    throw v6

    .line 32
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v3    # "response":Lokhttp3/Response;
    .end local v5    # "responseCode":I
    :cond_2
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 33
    .local v0, "builder":Lokhttp3/CacheControl$Builder;
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldReadFromDiskCache(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 34
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    .line 36
    :cond_3
    invoke-static {p2}, Lcom/squareup/picasso/NetworkPolicy;->shouldWriteToDiskCache(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 37
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    .line 39
    :cond_4
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v1

    goto :goto_0

    .line 55
    .local v0, "builder":Lokhttp3/Request$Builder;
    .restart local v3    # "response":Lokhttp3/Response;
    .restart local v5    # "responseCode":I
    :cond_5
    invoke-virtual {v3}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v2, 0x1

    .line 57
    .local v2, "fromCache":Z
    :goto_1
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    .line 58
    .local v4, "responseBody":Lokhttp3/ResponseBody;
    new-instance v6, Lcom/squareup/picasso/Downloader$Response;

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    invoke-direct {v6, v7, v2, v8, v9}, Lcom/squareup/picasso/Downloader$Response;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v6

    .line 55
    .end local v2    # "fromCache":Z
    .end local v4    # "responseBody":Lokhttp3/ResponseBody;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/game/sdk/net/down/ImageDownLoader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    .line 66
    .local v0, "cache":Lokhttp3/Cache;
    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Cache;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method
