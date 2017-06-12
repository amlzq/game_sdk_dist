.class Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;
.super Landroid/os/AsyncTask;
.source "AccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/AccountLoginFragment;
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
        "Lcom/game/sdk/domain/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)Lcom/game/sdk/ui/fragment/AccountLoginFragment;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 529
    new-instance v0, Lcom/game/sdk/engin/LoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1}, Lcom/game/sdk/engin/LoginEngin;-><init>(Landroid/content/Context;)V

    .line 530
    .local v0, "loginEngin":Lcom/game/sdk/engin/LoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/LoginEngin;->run()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 7
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 535
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 537
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/LoginInDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/LoginInDialog;->dismiss()V

    .line 541
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 545
    :cond_1
    iget-boolean v4, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v4, :cond_8

    .line 546
    const-string v4, "\u767b\u5f55\u6210\u529f----"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 548
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 549
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 550
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 551
    new-instance v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment;Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;)V

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    :cond_2
    :goto_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_6

    .line 567
    sput-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 568
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 569
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 570
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 571
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v4, v2, :cond_5

    :goto_1
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 572
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 573
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 575
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 580
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_2
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 582
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 583
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 582
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 585
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 586
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 587
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 589
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask$1;-><init>(Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 610
    :goto_3
    return-void

    .line 554
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 555
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_logo_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 556
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_logo_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 559
    :cond_4
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 560
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_init_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 561
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_init_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    move v2, v3

    .line 571
    goto/16 :goto_1

    .line 577
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_6
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    goto/16 :goto_2

    .line 596
    :cond_7
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 600
    :cond_8
    const-string v2, "\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    iget-object v3, v2, Lcom/game/sdk/ui/fragment/AccountLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 603
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 602
    :goto_4
    invoke-static {v3, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 605
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 606
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    .line 605
    :goto_5
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 607
    .local v0, "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto/16 :goto_3

    .line 603
    .end local v0    # "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_9
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_4

    .line 606
    :cond_a
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/AccountLoginFragment$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 525
    return-void
.end method
