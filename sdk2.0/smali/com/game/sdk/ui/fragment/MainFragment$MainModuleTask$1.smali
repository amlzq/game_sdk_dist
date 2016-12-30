.class Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;
.super Ljava/lang/Object;
.source "MainFragment.java"

# interfaces
.implements Lcom/game/sdk/net/listeners/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;
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
        "Lcom/game/sdk/domain/ModuleList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;->this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/game/sdk/net/entry/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/game/sdk/net/entry/Response;

    .prologue
    .line 414
    return-void
.end method

.method public onSuccess(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Lcom/game/sdk/domain/ModuleList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Lcom/game/sdk/domain/ModuleList;>;"
    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ModuleList;

    iget-object v1, v1, Lcom/game/sdk/domain/ModuleList;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ModuleList;

    iget-object v1, v1, Lcom/game/sdk/domain/ModuleList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 401
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;->this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->access$3(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)Lcom/game/sdk/ui/fragment/MainFragment;

    move-result-object v2

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->data:Ljava/lang/Object;

    check-cast v1, Lcom/game/sdk/domain/ModuleList;

    iget-object v1, v1, Lcom/game/sdk/domain/ModuleList;->list:Ljava/util/List;

    iput-object v1, v2, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 403
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;->this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->access$3(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)Lcom/game/sdk/ui/fragment/MainFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;->this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->access$3(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)Lcom/game/sdk/ui/fragment/MainFragment;

    move-result-object v2

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$10(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/MainModuleEngin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/engin/MainModuleEngin;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;->this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;
    invoke-static {v3}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->access$3(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)Lcom/game/sdk/ui/fragment/MainFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    # invokes: Lcom/game/sdk/ui/fragment/MainFragment;->saveModuleList(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v1, v2, v3}, Lcom/game/sdk/ui/fragment/MainFragment;->access$11(Lcom/game/sdk/ui/fragment/MainFragment;Ljava/lang/String;Ljava/util/List;)V

    .line 406
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 407
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 408
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask$1;->this$1:Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->access$3(Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)Lcom/game/sdk/ui/fragment/MainFragment;

    move-result-object v1

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$9(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
