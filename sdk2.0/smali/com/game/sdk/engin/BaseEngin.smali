.class public abstract Lcom/game/sdk/engin/BaseEngin;
.super Ljava/lang/Object;
.source "BaseEngin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/game/sdk/engin/BaseEngin;, "Lcom/game/sdk/engin/BaseEngin<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    .local p0, "this":Lcom/game/sdk/engin/BaseEngin;, "Lcom/game/sdk/engin/BaseEngin<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/game/sdk/engin/BaseEngin;->context:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public agetResultInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/game/sdk/engin/BaseEngin;, "Lcom/game/sdk/engin/BaseEngin<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<TT;>;"
    if-nez p2, :cond_0

    .line 49
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .restart local p2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/engin/BaseEngin;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/engin/BaseEngin$2;

    invoke-direct {v3, p0, p1, p3}, Lcom/game/sdk/engin/BaseEngin$2;-><init>(Lcom/game/sdk/engin/BaseEngin;Ljava/lang/Class;Lcom/game/sdk/net/listeners/Callback;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agetResultInfo\u5f02\u5e38->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public agetResultInfo(ZLjava/lang/Class;Ljava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V
    .locals 4
    .param p1, "encodeResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/game/sdk/net/listeners/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/game/sdk/engin/BaseEngin;, "Lcom/game/sdk/engin/BaseEngin<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "callback":Lcom/game/sdk/net/listeners/Callback;, "Lcom/game/sdk/net/listeners/Callback<TT;>;"
    if-nez p3, :cond_0

    .line 85
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 88
    .restart local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/game/sdk/engin/BaseEngin;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/engin/BaseEngin$3;

    invoke-direct {v3, p0, p2, p4}, Lcom/game/sdk/engin/BaseEngin$3;-><init>(Lcom/game/sdk/engin/BaseEngin;Ljava/lang/Class;Lcom/game/sdk/net/listeners/Callback;)V

    invoke-virtual {v1, v2, p3, v3, p1}, Lcom/game/sdk/net/impls/OKHttpRequest;->apost2(Ljava/lang/String;Ljava/util/Map;Lcom/game/sdk/net/listeners/OnHttpResonseListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agetResultInfo\u5f02\u5e38->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getResultInfo(ZLjava/lang/Class;Ljava/util/Map;)Lcom/game/sdk/domain/ResultInfo;
    .locals 7
    .param p1, "encodeResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/game/sdk/domain/ResultInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/game/sdk/engin/BaseEngin;, "Lcom/game/sdk/engin/BaseEngin<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 32
    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 34
    .restart local p3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    .line 36
    .local v2, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<TT;>;"
    :try_start_0
    invoke-static {}, Lcom/game/sdk/net/impls/OKHttpRequest;->getImpl()Lcom/game/sdk/net/impls/OKHttpRequest;

    move-result-object v3

    invoke-virtual {p0}, Lcom/game/sdk/engin/BaseEngin;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3, p1}, Lcom/game/sdk/net/impls/OKHttpRequest;->post2(Ljava/lang/String;Ljava/util/Map;Z)Lcom/game/sdk/net/entry/Response;

    move-result-object v1

    .line 37
    .local v1, "response":Lcom/game/sdk/net/entry/Response;
    iget-object v3, v1, Lcom/game/sdk/net/entry/Response;->body:Ljava/lang/String;

    new-instance v4, Lcom/game/sdk/engin/BaseEngin$1;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-direct {v4, p0, v5}, Lcom/game/sdk/engin/BaseEngin$1;-><init>(Lcom/game/sdk/engin/BaseEngin;[Ljava/lang/reflect/Type;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<TT;>;"
    check-cast v2, Lcom/game/sdk/domain/ResultInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "response":Lcom/game/sdk/net/entry/Response;
    .restart local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<TT;>;"
    :goto_0
    return-object v2

    .line 38
    .end local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<TT;>;"
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/game/sdk/domain/ResultInfo;

    invoke-direct {v2}, Lcom/game/sdk/domain/ResultInfo;-><init>()V

    .line 40
    .restart local v2    # "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<TT;>;"
    const/16 v3, -0x3e8

    iput v3, v2, Lcom/game/sdk/domain/ResultInfo;->code:I

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getResultInfo\u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method
