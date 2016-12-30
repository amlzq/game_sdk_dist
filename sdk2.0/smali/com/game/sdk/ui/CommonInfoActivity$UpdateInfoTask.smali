.class Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;
.super Landroid/os/AsyncTask;
.source "CommonInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/CommonInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateInfoTask"
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
.field final synthetic this$0:Lcom/game/sdk/ui/CommonInfoActivity;

.field uInfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/CommonInfoActivity;Lcom/game/sdk/domain/UserInfo;)V
    .locals 0
    .param p2, "uInfo"    # Lcom/game/sdk/domain/UserInfo;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->uInfo:Lcom/game/sdk/domain/UserInfo;

    .line 187
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    new-instance v1, Lcom/game/sdk/engin/UpdateUserInfoEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->uInfo:Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/UpdateUserInfoEngin;-><init>(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/CommonInfoActivity;->access$2(Lcom/game/sdk/ui/CommonInfoActivity;Lcom/game/sdk/engin/UpdateUserInfoEngin;)V

    .line 197
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    # getter for: Lcom/game/sdk/ui/CommonInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/CommonInfoActivity;->access$3(Lcom/game/sdk/ui/CommonInfoActivity;)Lcom/game/sdk/engin/UpdateUserInfoEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdateUserInfoEngin;->updateUserInfo()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    iget-object v0, v0, Lcom/game/sdk/ui/CommonInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 204
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/CommonInfoActivity;->setResult(I)V

    .line 207
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/CommonInfoActivity;->finish()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->this$0:Lcom/game/sdk/ui/CommonInfoActivity;

    const-string v1, "\u4fee\u6539\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 192
    return-void
.end method
