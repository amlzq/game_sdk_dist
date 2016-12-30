.class Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;
.super Landroid/os/AsyncTask;
.source "UpdatePassWordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdatePassWordTask"
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
.field newPassWord:Ljava/lang/String;

.field oldPassWord:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "oldPassWord"    # Ljava/lang/String;
    .param p4, "newPassWord"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->userName:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->oldPassWord:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->newPassWord:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    new-instance v1, Lcom/game/sdk/engin/UpdatePassWordEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->userName:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->oldPassWord:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->newPassWord:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/game/sdk/engin/UpdatePassWordEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$1(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Lcom/game/sdk/engin/UpdatePassWordEngin;)V

    .line 171
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$2(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/engin/UpdatePassWordEngin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/engin/UpdatePassWordEngin;->run()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 178
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "\u4fee\u6539\u5bc6\u7801\u6210\u529f"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v0

    .line 184
    .local v0, "isExist":Z
    if-nez v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;
    invoke-static {v3}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$3(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 194
    .end local v0    # "isExist":Z
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v0    # "isExist":Z
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->this$0:Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    # getter for: Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;
    invoke-static {v3}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->access$3(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 166
    return-void
.end method
