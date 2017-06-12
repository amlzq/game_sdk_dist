.class Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask$1;
.super Ljava/lang/Object;
.source "GamePackageActivity.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;
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
        "Lcom/game/sdk/domain/GamePackageList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask$1;->this$1:Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 145
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/GamePackageList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/GamePackageList;>;"
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageList;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask$1;->this$1:Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;

    # getter for: Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->access$3(Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)Lcom/game/sdk/ui/GamePackageActivity;

    move-result-object v2

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/GamePackageList;

    iget-object v1, v1, Lcom/game/sdk/domain/GamePackageList;->list:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    .line 135
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 136
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask$1;->this$1:Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;

    # getter for: Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->access$3(Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)Lcom/game/sdk/ui/GamePackageActivity;

    move-result-object v1

    # getter for: Lcom/game/sdk/ui/GamePackageActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageActivity;->access$4(Lcom/game/sdk/ui/GamePackageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
