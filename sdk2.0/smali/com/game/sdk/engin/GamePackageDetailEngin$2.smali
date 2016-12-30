.class Lcom/game/sdk/engin/GamePackageDetailEngin$2;
.super Ljava/lang/Object;
.source "GamePackageDetailEngin.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/OnHttpResonseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/engin/GamePackageDetailEngin;->agetResultInfo(ZLjava/util/Map;Lcom/game/sdk/net/listeners/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/engin/GamePackageDetailEngin;

.field private final synthetic val$callback:Lcom/game/sdk/net/listeners/Callback;


# direct methods
.method constructor <init>(Lcom/game/sdk/engin/GamePackageDetailEngin;Lcom/game/sdk/net/listeners/Callback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->this$0:Lcom/game/sdk/engin/GamePackageDetailEngin;

    iput-object p2, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    invoke-interface {v0, p1}, Lcom/game/sdk/net/listeners/Callback;->onFailure(Lcom/game/sdk/net/entry/Response;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/net/entry/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/GamePackageDetailList;>;"
    :try_start_0
    iget-object v3, p1, Lcom/game/sdk/net/entry/Response;->body:Ljava/lang/String;

    new-instance v4, Lcom/game/sdk/engin/GamePackageDetailEngin$2$1;

    invoke-direct {v4, p0}, Lcom/game/sdk/engin/GamePackageDetailEngin$2$1;-><init>(Lcom/game/sdk/engin/GamePackageDetailEngin$2;)V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v3, v4, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/game/sdk/domain/ResultInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    if-eqz v3, :cond_0

    .line 94
    if-eqz v2, :cond_1

    .line 95
    iget-object v3, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    invoke-interface {v3, v2}, Lcom/game/sdk/net/listeners/Callback;->onSuccess(Lcom/game/sdk/domain/ResultInfo;)V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "\u670d\u52a1\u5668\u9519\u8bef\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"

    iput-object v3, p1, Lcom/game/sdk/net/entry/Response;->body:Ljava/lang/String;

    .line 88
    iget-object v3, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    invoke-interface {v3, p1}, Lcom/game/sdk/net/listeners/Callback;->onFailure(Lcom/game/sdk/net/entry/Response;)V

    .line 89
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const-string v3, "agetResultInfo\u5f02\u5e38->JSON\u89e3\u6790\u9519\u8bef\uff08\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u4e0d\u6b63\u786e\uff09"

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/game/sdk/engin/GamePackageDetailEngin$2;->val$callback:Lcom/game/sdk/net/listeners/Callback;

    invoke-interface {v3, p1}, Lcom/game/sdk/net/listeners/Callback;->onFailure(Lcom/game/sdk/net/entry/Response;)V

    goto :goto_1
.end method
