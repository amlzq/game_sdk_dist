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
        "Lcom/game/sdk/domain/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/QuickLoginActivity;


# direct methods
.method private constructor <init>(Lcom/game/sdk/ui/QuickLoginActivity;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)Lcom/game/sdk/ui/QuickLoginActivity;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Lcom/game/sdk/engin/QuickLoginEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/QuickLoginEngin;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 254
    .local v0, "quickLoginEngin":Lcom/game/sdk/engin/QuickLoginEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/QuickLoginEngin;->quickRun()Lcom/game/sdk/domain/LoginResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/LoginResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/LoginResult;)V
    .locals 7
    .param p1, "loginResult"    # Lcom/game/sdk/domain/LoginResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 259
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 260
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v4}, Lcom/game/sdk/ui/QuickLoginActivity;->closeDialog()V

    .line 261
    iget-boolean v4, p1, Lcom/game/sdk/domain/LoginResult;->result:Z

    if-eqz v4, :cond_6

    .line 262
    const-string v4, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u6210\u529f----"

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 264
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 266
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->agentId:Ljava/lang/String;

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    .line 267
    new-instance v4, Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;-><init>(Lcom/game/sdk/ui/QuickLoginActivity;Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;)V

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/game/sdk/ui/QuickLoginActivity$ReInitInfoTaskByUserId;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 286
    :cond_0
    :goto_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_1

    .line 287
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 288
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 289
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 290
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v4, v2, :cond_4

    :goto_1
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 291
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 292
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 294
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 297
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_1
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 298
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    new-instance v3, Lcom/game/sdk/view/NoticeDialog;

    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 299
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 301
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/QuickLoginActivity;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask$1;-><init>(Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 320
    :goto_2
    return-void

    .line 270
    :cond_2
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v5, "agent_game_logo_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 271
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 272
    const-string v6, "agent_game_logo_image"

    .line 271
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 273
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 274
    const-string v6, "game_logo_image"

    .line 273
    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    const-string v5, "agent_game_init_image"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 278
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    .line 279
    const-string v6, "agent_game_init_image"

    .line 278
    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 280
    iget-object v4, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->lunchBitmp:Landroid/graphics/Bitmap;

    .line 281
    const-string v6, "game_init_image"

    .line 280
    invoke-static {v4, v5, v6}, Lcom/game/sdk/utils/Util;->writeLaunchImageInSDCard(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_4
    move v2, v3

    .line 290
    goto/16 :goto_1

    .line 308
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->finish()V

    goto :goto_2

    .line 313
    :cond_6
    const-string v2, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u5931\u8d25----"

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v3, -0x1

    .line 315
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u77ed\u4fe1\u4e00\u952e\u767b\u5f55\u5931\u8d25"

    .line 314
    :goto_3
    invoke-direct {v0, v3, v2}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 316
    .local v0, "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    .line 318
    iget-object v2, p0, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->this$0:Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/QuickLoginActivity;->toLoginActivity()V

    goto :goto_2

    .line 315
    .end local v0    # "errorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_7
    iget-object v2, p1, Lcom/game/sdk/domain/LoginResult;->message:Ljava/lang/String;

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/LoginResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/QuickLoginActivity$LoginTask;->onPostExecute(Lcom/game/sdk/domain/LoginResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 249
    return-void
.end method
