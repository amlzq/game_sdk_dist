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
        "Lcom/game/sdk/domain/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;)V
    .locals 0

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;)Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 617
    new-instance v0, Lcom/game/sdk/engin/LoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1}, Lcom/game/sdk/engin/LoginEngin;-><init>(Landroid/content/Context;)V

    .line 618
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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 7
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 623
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 624
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 625
    iget-boolean v4, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v4, :cond_5

    .line 626
    const-string v4, "\u624b\u673a\u53f7+\u9ed8\u8ba4\u5bc6\u7801\u65b9\u5f0f\u767b\u5f55\u6210\u529f----"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 628
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 629
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 630
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 631
    new-instance v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;)V

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 646
    :cond_0
    :goto_0
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 648
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 649
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 650
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v4, v2, :cond_3

    :goto_1
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 651
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 652
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 654
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 655
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 658
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 659
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 658
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 661
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 662
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 663
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 665
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask$1;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 683
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_2
    return-void

    .line 634
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 635
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_logo_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 636
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_logo_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 639
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 640
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_init_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 641
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_init_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_3
    move v2, v3

    .line 650
    goto/16 :goto_1

    .line 672
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 676
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    const-string v2, "\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 677
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 678
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 677
    :goto_3
    invoke-static {v3, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 679
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 680
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 679
    :goto_4
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 681
    .local v0, "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto/16 :goto_2

    .line 678
    .end local v0    # "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_6
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_3

    .line 680
    :cond_7
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 613
    return-void
.end method
