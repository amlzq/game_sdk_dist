.class Lcom/game/sdk/ui/ChargeActivity$PayInitTask;
.super Landroid/os/AsyncTask;
.source "ChargeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/ChargeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PayInitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/ui/ChargeActivity$PayInitTask;)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;-><init>(Lcom/game/sdk/ui/ChargeActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 518
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    new-instance v1, Lcom/game/sdk/engin/PayCoinEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/PayCoinEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/ChargeActivity;->access$11(Lcom/game/sdk/ui/ChargeActivity;Lcom/game/sdk/engin/PayCoinEngin;)V

    .line 519
    iget-object v0, p0, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/ChargeActivity;->access$12(Lcom/game/sdk/ui/ChargeActivity;)Lcom/game/sdk/engin/PayCoinEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/PayCoinEngin;->run()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/ChargeActivity$PayInitTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 514
    return-void
.end method
