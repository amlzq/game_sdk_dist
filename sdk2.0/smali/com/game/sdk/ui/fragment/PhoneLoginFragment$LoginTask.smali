.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;
.super Landroid/os/AsyncTask;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
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
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 400
    new-instance v0, Lcom/game/sdk/engin/LoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1}, Lcom/game/sdk/engin/LoginEngin;-><init>(Landroid/content/Context;)V

    .line 401
    .local v0, "loginEngin":Lcom/game/sdk/engin/LoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/LoginEngin;->run()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    .line 406
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 407
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 408
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    const-string v3, "\u624b\u673a\u53f7+\u9ed8\u8ba4\u5bc6\u7801\u65b9\u5f0f\u767b\u5f55\u6210\u529f----"

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    new-instance v4, Lcom/game/sdk/view/NoticeDialog;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 412
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 414
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 416
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v3, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 417
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v3, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 418
    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v3, v3, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v3, v2, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 419
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 420
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 422
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 423
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 426
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 427
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 426
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 433
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_1
    return-void

    .line 418
    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 429
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_1
    const-string v2, "\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 430
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v2, -0x1

    const-string v3, "\u767b\u5f55\u5931\u8d25"

    invoke-direct {v0, v2, v3}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 431
    .local v0, "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 396
    return-void
.end method
