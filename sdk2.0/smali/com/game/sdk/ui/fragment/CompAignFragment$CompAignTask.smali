.class Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;
.super Landroid/os/AsyncTask;
.source "CompAignFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/CompAignFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompAignTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/game/sdk/domain/CompAign;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/CompAignFragment;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/CompAignFragment;Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;-><init>(Lcom/game/sdk/ui/fragment/CompAignFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CompAign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignEngin:Lcom/game/sdk/engin/CompAignEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$3(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/engin/CompAignEngin;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->currentPage:I
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$4(Lcom/game/sdk/ui/fragment/CompAignFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/game/sdk/engin/CompAignEngin;->run(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CompAign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/CompAign;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 154
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iput-object p1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignPageList:Ljava/util/List;

    .line 156
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 163
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 164
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$5(Lcom/game/sdk/ui/fragment/CompAignFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    :goto_1
    return-void

    .line 159
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    iput-object p1, v1, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 168
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;->access$5(Lcom/game/sdk/ui/fragment/CompAignFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 144
    return-void
.end method
