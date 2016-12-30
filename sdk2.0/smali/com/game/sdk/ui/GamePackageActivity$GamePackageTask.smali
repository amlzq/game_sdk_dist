.class Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;
.super Landroid/os/AsyncTask;
.source "GamePackageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/GamePackageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GamePackageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/game/sdk/domain/GamePackage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/GamePackageActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/GamePackageActivity;Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;-><init>(Lcom/game/sdk/ui/GamePackageActivity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)Lcom/game/sdk/ui/GamePackageActivity;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageActivity;->gamePackageEngin:Lcom/game/sdk/engin/GamePackageEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/GamePackageActivity;->access$3(Lcom/game/sdk/ui/GamePackageActivity;)Lcom/game/sdk/engin/GamePackageEngin;

    move-result-object v0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    new-instance v2, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask$1;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask$1;-><init>(Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/engin/GamePackageEngin;->getScoreGameList(Ljava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/GamePackage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/GamePackage;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    iput-object p1, v1, Lcom/game/sdk/ui/GamePackageActivity;->list:Ljava/util/List;

    .line 150
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 151
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iget-object v1, p0, Lcom/game/sdk/ui/GamePackageActivity$GamePackageTask;->this$0:Lcom/game/sdk/ui/GamePackageActivity;

    # getter for: Lcom/game/sdk/ui/GamePackageActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/GamePackageActivity;->access$4(Lcom/game/sdk/ui/GamePackageActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 114
    return-void
.end method
