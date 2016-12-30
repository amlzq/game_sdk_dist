.class Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;
.super Landroid/os/AsyncTask;
.source "CompAignDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/CompAignDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompAignDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/CompAignDetail;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;-><init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/CompAignDetail;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetailEngin:Lcom/game/sdk/engin/CompAignDetailEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$9(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/engin/CompAignDetailEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/CompAignDetailEngin;->run()Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/CompAignDetail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/CompAignDetail;)V
    .locals 2
    .param p1, "result"    # Lcom/game/sdk/domain/CompAignDetail;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    invoke-static {v1, p1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$10(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;Lcom/game/sdk/domain/CompAignDetail;)V

    .line 172
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 173
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 174
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->this$0:Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    # getter for: Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->access$11(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/CompAignDetail;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->onPostExecute(Lcom/game/sdk/domain/CompAignDetail;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 159
    return-void
.end method
