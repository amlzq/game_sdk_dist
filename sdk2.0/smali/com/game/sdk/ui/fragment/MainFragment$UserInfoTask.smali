.class Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;
.super Landroid/os/AsyncTask;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserInfoTask"
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
    .line 355
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/MainFragment;->access$8(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/UserInfoEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/UserInfoEngin;->getUserInfo()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 373
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 374
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->this$0:Lcom/game/sdk/ui/fragment/MainFragment;

    # getter for: Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/MainFragment;->access$9(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 359
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 360
    return-void
.end method
