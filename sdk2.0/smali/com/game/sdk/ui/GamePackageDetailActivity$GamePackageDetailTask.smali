.class Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;
.super Landroid/os/AsyncTask;
.source "GamePackageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/GamePackageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GamePackageDetailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/game/sdk/domain/GamePackageDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;)Lcom/game/sdk/ui/GamePackageDetailActivity;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailEngin:Lcom/game/sdk/engin/GamePackageDetailEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$8(Lcom/game/sdk/ui/GamePackageDetailActivity;)Lcom/game/sdk/engin/GamePackageDetailEngin;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->currentPage:I
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$9(Lcom/game/sdk/ui/GamePackageDetailActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->gameId:Ljava/lang/String;
    invoke-static {v2}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$10(Lcom/game/sdk/ui/GamePackageDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask$1;-><init>(Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/engin/GamePackageDetailEngin;->getGamePackageDetailList(ILjava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackageDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GamePackageDetail;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 249
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    iput-object p1, v1, Lcom/game/sdk/ui/GamePackageDetailActivity;->gamePackageDetailList:Ljava/util/List;

    .line 253
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 254
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 255
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$GamePackageDetailTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageDetailActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->access$11(Lcom/game/sdk/ui/GamePackageDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 257
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 218
    return-void
.end method
