.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;
.super Landroid/os/AsyncTask;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneValidateTask"
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
.field mobileNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    .line 448
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 457
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 458
    .local v0, "quickLoginEngin":Lcom/game/sdk/engin/QuickLoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/QuickLoginEngin;->run()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 463
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 464
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 465
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 467
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v4}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 470
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 471
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 472
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 473
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 474
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 476
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 477
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 483
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_1
    return-void

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_0
    move v2, v3

    .line 472
    goto :goto_0

    .line 479
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_1
    const-string v2, "\u624b\u673a\u53f7-\u9a8c\u8bc1\u7801\u65b9\u5f0f-\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 480
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v2, -0x1

    const-string v3, "\u767b\u5f55\u5931\u8d25"

    invoke-direct {v0, v2, v3}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 481
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 453
    return-void
.end method
