.class Lcom/game/sdk/net/impls/OKHttpRequest$1;
.super Ljava/lang/Object;
.source "OKHttpRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/net/impls/OKHttpRequest;->sendRequest(Lokhttp3/Request;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/net/impls/OKHttpRequest;

.field private final synthetic val$encryptResponse:Z

.field private final synthetic val$httpResonseListener:Lcom/game/sdk/net/listeners/OnHttpResonseListener;


# direct methods
.method constructor <init>(Lcom/game/sdk/net/impls/OKHttpRequest;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/net/impls/OKHttpRequest$1;->this$0:Lcom/game/sdk/net/impls/OKHttpRequest;

    iput-object p2, p0, Lcom/game/sdk/net/impls/OKHttpRequest$1;->val$httpResonseListener:Lcom/game/sdk/net/listeners/OnHttpResonseListener;

    iput-boolean p3, p0, Lcom/game/sdk/net/impls/OKHttpRequest$1;->val$encryptResponse:Z

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 203
    const/4 v1, -0x1

    const-string v2, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/game/sdk/net/utils/OKHttpUtil;->setResponse(ILjava/lang/String;)Lcom/game/sdk/net/entry/Response;

    move-result-object v0

    .line 204
    .local v0, "response":Lcom/game/sdk/net/entry/Response;
    iget-object v1, p0, Lcom/game/sdk/net/impls/OKHttpRequest$1;->val$httpResonseListener:Lcom/game/sdk/net/listeners/OnHttpResonseListener;

    invoke-interface {v1, v0}, Lcom/game/sdk/net/listeners/OnHttpResonseListener;->onFailure(Lcom/game/sdk/net/entry/Response;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "nresponse":Lcom/game/sdk/net/entry/Response;
    const-string v0, ""

    .line 212
    .local v0, "body":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/game/sdk/net/impls/OKHttpRequest$1;->val$encryptResponse:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/net/utils/OKHttpUtil;->decodeBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2, v0}, Lcom/game/sdk/net/utils/OKHttpUtil;->setResponse(ILjava/lang/String;)Lcom/game/sdk/net/entry/Response;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/game/sdk/net/impls/OKHttpRequest$1;->val$httpResonseListener:Lcom/game/sdk/net/listeners/OnHttpResonseListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/net/listeners/OnHttpResonseListener;->onSuccess(Lcom/game/sdk/net/entry/Response;)V

    .line 220
    return-void

    .line 215
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
