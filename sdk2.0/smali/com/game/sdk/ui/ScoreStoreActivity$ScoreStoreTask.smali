.class Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;
.super Landroid/os/AsyncTask;
.source "ScoreStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ScoreStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoreStoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/game/sdk/domain/ScoreStore;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ScoreStoreActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/ScoreStoreActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;)Lcom/game/sdk/ui/ScoreStoreActivity;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$8(Lcom/game/sdk/ui/ScoreStoreActivity;)Lcom/game/sdk/engin/ScoreStoreEngin;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->currentPage:I
    invoke-static {v1}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$9(Lcom/game/sdk/ui/ScoreStoreActivity;)I

    move-result v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    new-instance v3, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask$1;-><init>(Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/engin/ScoreStoreEngin;->getScoreStoreList(ILjava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ScoreStore;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 237
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    iput-object p1, v1, Lcom/game/sdk/ui/ScoreStoreActivity;->gameCoinList:Ljava/util/List;

    .line 241
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 242
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 243
    iget-object v1, p0, Lcom/game/sdk/ui/ScoreStoreActivity$ScoreStoreTask;->this$0:Lcom/game/sdk/ui/ScoreStoreActivity;

    # getter for: Lcom/game/sdk/ui/ScoreStoreActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/ScoreStoreActivity;->access$10(Lcom/game/sdk/ui/ScoreStoreActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 245
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 206
    return-void
.end method
