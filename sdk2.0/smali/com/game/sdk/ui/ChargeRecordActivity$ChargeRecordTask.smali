.class Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;
.super Landroid/os/AsyncTask;
.source "ChargeRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargeRecordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/game/sdk/domain/ChargeRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeRecordActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/ChargeRecordActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/ChargeRecordActivity;Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;-><init>(Lcom/game/sdk/ui/ChargeRecordActivity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;)Lcom/game/sdk/ui/ChargeRecordActivity;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    # getter for: Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordEngin:Lcom/game/sdk/engin/ChargeRecordEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeRecordActivity;->access$3(Lcom/game/sdk/ui/ChargeRecordActivity;)Lcom/game/sdk/engin/ChargeRecordEngin;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    .line 104
    new-instance v5, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask$1;

    invoke-direct {v5, p0}, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask$1;-><init>(Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;)V

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/game/sdk/engin/ChargeRecordEngin;->getChargeRecordList(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ChargeRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ChargeRecord;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    iput-object p1, v1, Lcom/game/sdk/ui/ChargeRecordActivity;->chargeRecordList:Ljava/util/List;

    .line 134
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 135
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 136
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeRecordActivity$ChargeRecordTask;->this$0:Lcom/game/sdk/ui/ChargeRecordActivity;

    # getter for: Lcom/game/sdk/ui/ChargeRecordActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/ChargeRecordActivity;->access$4(Lcom/game/sdk/ui/ChargeRecordActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 98
    return-void
.end method
