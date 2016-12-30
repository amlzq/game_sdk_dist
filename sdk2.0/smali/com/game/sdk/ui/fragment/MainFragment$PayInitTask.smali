.class Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;
.super Landroid/os/AsyncTask;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/MainFragment;
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
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/MainFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    new-instance v1, Lcom/game/sdk/engin/PayCoinEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/MainFragment;->access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/PayCoinEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$12(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/engin/PayCoinEngin;)V

    .line 529
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$13(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/PayCoinEngin;

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 534
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$5(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$6(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->gttb:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    return-void

    .line 536
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 537
    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 523
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 524
    return-void
.end method
