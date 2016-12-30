.class Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;
.super Landroid/os/AsyncTask;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAvaterTask"
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

.field public updateUserInfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/UserInfoActivity;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0
    .param p2, "uUserInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 476
    iput-object p2, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    .line 477
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 486
    new-instance v0, Lcom/game/sdk/engin/UpdateAvaterEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->updateUserInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->face:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/UpdateAvaterEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    .local v0, "acaterEngin":Lcom/game/sdk/engin/UpdateAvaterEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdateAvaterEngin;->updateUserAvater()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 493
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/UserInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 494
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 498
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 499
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/game/sdk/ui/UserInfoActivity;->access$18(Lcom/game/sdk/ui/UserInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    const-string v1, "\u4fee\u6539\u7528\u6237\u4fe1\u606f\u6210\u529f----"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 506
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->this$0:Lcom/game/sdk/ui/UserInfoActivity;

    const-string v2, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 504
    const-string v1, "\u4fee\u6539\u7528\u6237\u4fe1\u606f\u5931\u8d25----"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoActivity$UpdateAvaterTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 481
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 482
    return-void
.end method
