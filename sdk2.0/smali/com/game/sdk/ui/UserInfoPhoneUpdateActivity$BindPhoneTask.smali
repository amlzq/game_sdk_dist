.class Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;
.super Landroid/os/AsyncTask;
.source "UserInfoPhoneUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindPhoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/BindPhoneResult;",
        ">;"
    }
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->userName:Ljava/lang/String;

    .line 213
    iput-object p4, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->code:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/BindPhoneResult;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Lcom/game/sdk/engin/BindPhoneEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->userName:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->code:Ljava/lang/String;

    .line 223
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/game/sdk/engin/BindPhoneEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v0, "bindPhoneEngin":Lcom/game/sdk/engin/BindPhoneEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/BindPhoneEngin;->run()Lcom/game/sdk/domain/BindPhoneResult;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/BindPhoneResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/BindPhoneResult;)V
    .locals 8
    .param p1, "bindPhoneResult"    # Lcom/game/sdk/domain/BindPhoneResult;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 230
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->bindDialog:Lcom/game/sdk/view/CustomDialog;
    invoke-static {v2}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->access$5(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Lcom/game/sdk/view/CustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 232
    iget-boolean v2, p1, Lcom/game/sdk/domain/BindPhoneResult;->result:Z

    if-eqz v2, :cond_2

    .line 233
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    const/4 v3, 0x1

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 234
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    const-string v3, "\u7ed1\u5b9a\u624b\u673a\u53f7\u6210\u529f"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 239
    .local v0, "accountNumber":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    .line 240
    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v1

    .line 241
    .local v1, "isExist":Z
    if-nez v1, :cond_1

    .line 242
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 243
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v5, v5, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 242
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 252
    :goto_1
    sput v7, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 254
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 255
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 254
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 256
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-virtual {v2, v7}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->setResult(I)V

    .line 257
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->finish()V

    .line 261
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "isExist":Z
    :goto_2
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->userName:Ljava/lang/String;

    goto :goto_0

    .line 246
    .restart local v0    # "accountNumber":Ljava/lang/String;
    .restart local v1    # "isExist":Z
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 249
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v5, v5, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 248
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 259
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "isExist":Z
    :cond_2
    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    iget-object v2, p1, Lcom/game/sdk/domain/BindPhoneResult;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u7ed1\u5b9a\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    :goto_3
    invoke-static {v3, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v2, p1, Lcom/game/sdk/domain/BindPhoneResult;->message:Ljava/lang/String;

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/BindPhoneResult;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->onPostExecute(Lcom/game/sdk/domain/BindPhoneResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 219
    return-void
.end method
