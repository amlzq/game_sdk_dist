.class Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "QuickLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/QuickLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
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
.field final synthetic this$0:Lcom/game/sdk/ui/QuickLoginActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 207
    .local v0, "quickLoginEngin":Lcom/game/sdk/engin/QuickLoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/QuickLoginEngin;->quickRun()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 213
    iget-object v3, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v3}, Lcom/game/sdk/ui/QuickLoginActivity;->closeDialog()V

    .line 214
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    const-string v3, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u6210\u529f----"

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    new-instance v4, Lcom/game/sdk/view/NoticeDialog;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 219
    iget-object v3, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v3, v3, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 221
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v3, :cond_0

    .line 222
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 223
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v3, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 224
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v3, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 225
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, v3, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v3, v2, :cond_1

    :goto_0
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 226
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 227
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 229
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 239
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_0
    :goto_1
    return-void

    .line 225
    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 233
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_2
    const-string v2, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v2, -0x1

    const-string v3, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u5931\u8d25"

    invoke-direct {v0, v2, v3}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 235
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    .line 237
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 202
    return-void
.end method
