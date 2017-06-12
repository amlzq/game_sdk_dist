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
        "Lcom/game/sdk/domain/LoginResult;",
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
    .line 696
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 697
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    .line 698
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;)Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 707
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 708
    .local v0, "quickLoginEngin":Lcom/game/sdk/engin/QuickLoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/QuickLoginEngin;->run()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 7
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 713
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 714
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->intoGameDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v4}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 715
    iget-boolean v4, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v4, :cond_5

    .line 717
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 718
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 719
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 720
    new-instance v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;)V

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 735
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 737
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v4}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 739
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 740
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 741
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 742
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v4, v2, :cond_3

    :goto_1
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 743
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 744
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 746
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 748
    const/4 v2, 0x2

    sput v2, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 750
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 751
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 750
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 753
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 754
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 755
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 757
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask$1;-><init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 778
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_2
    return-void

    .line 723
    :cond_1
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 724
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_logo_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 725
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_logo_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 728
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 729
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v5, v5, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "agent_game_init_image"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 730
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v4, v4, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    const-string v6, "game_init_image"

    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_3
    move v2, v3

    .line 742
    goto/16 :goto_1

    .line 764
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v2, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 769
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 771
    const-string v2, "\u624b\u673a\u53f7-\u9a8c\u8bc1\u7801\u65b9\u5f0f-\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 772
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v3, v2, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 773
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 772
    :goto_3
    invoke-static {v3, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 774
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 775
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u624b\u673a\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 774
    :goto_4
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 776
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto/16 :goto_2

    .line 773
    .end local v0    # "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_6
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_3

    .line 775
    :cond_7
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$PhoneValidateTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 702
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 703
    return-void
.end method
