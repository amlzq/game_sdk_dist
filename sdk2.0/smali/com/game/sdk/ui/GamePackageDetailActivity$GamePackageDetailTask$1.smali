.class Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask$1;
.super Ljava/lang/Object;
.source "GamePackageDetailActivity.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/game/sdk/net/listeners/Callback",
        "<",
        "Lcom/game/sdk/domain/GamePackageDetailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask$1;->this$1:Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 240
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetailList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/GamePackageDetailList;>;"
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageDetailList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageDetailList;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageDetailList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageDetailList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask$1;->this$1:Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->access$2(Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;)Lcom/game/sdk/ui/GamePackageDetailActivity;

    move-result-object v2

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageDetailList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageDetailList;->list:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    .line 231
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 232
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask$1;->this$1:Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->access$2(Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;)Lcom/game/sdk/ui/GamePackageDetailActivity;

    move-result-object v1

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$11(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
