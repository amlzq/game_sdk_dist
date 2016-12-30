.class Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;
.super Landroid/os/AsyncTask;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitUserInfoTask"
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
.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;-><init>(Lcom/game/sdk/ui/UserInfoActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoActivity;->access$17(Lcom/game/sdk/ui/UserInfoActivity;)Lcom/game/sdk/engin/UserInfoEngin;

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 361
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 362
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$18(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$InitUserInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 348
    return-void
.end method
