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
        "Ljava/lang/Boolean;",
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
    .line 201
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 203
    iput-object p3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->userName:Ljava/lang/String;

    .line 204
    iput-object p4, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->code:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Lcom/game/sdk/engin/BindPhoneEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->userName:Ljava/lang/String;

    .line 215
    iget-object v4, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->code:Ljava/lang/String;

    .line 214
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/game/sdk/engin/BindPhoneEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v0, "bindPhoneEngin":Lcom/game/sdk/engin/BindPhoneEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/BindPhoneEngin;->run()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->bindDialog:Lcom/game/sdk/view/CustomDialog;
    invoke-static {v2}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->access$5(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Lcom/game/sdk/view/CustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 223
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    const/4 v3, 0x1

    iput v3, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 225
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    const-string v3, "\u7ed1\u5b9a\u624b\u673a\u53f7\u6210\u529f"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 230
    .local v0, "accountNumber":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    .line 231
    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->findUserLoginInfoByName(Ljava/lang/String;)Z

    move-result v1

    .line 232
    .local v1, "isExist":Z
    if-nez v1, :cond_1

    .line 233
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 234
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v5, v5, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 233
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 243
    :goto_1
    sput v7, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 245
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 246
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 245
    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 247
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-virtual {v2, v7}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->setResult(I)V

    .line 248
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->finish()V

    .line 252
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "isExist":Z
    :goto_2
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->userName:Ljava/lang/String;

    goto :goto_0

    .line 237
    .restart local v0    # "accountNumber":Ljava/lang/String;
    .restart local v1    # "isExist":Z
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/game/sdk/db/impl/UserLoginInfodao;->deleteUserLoginByName(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-static {v2}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->phoneNumber:Ljava/lang/String;

    .line 240
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v5, v5, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    .line 239
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->saveUserLoginInfo(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    .line 250
    .end local v0    # "accountNumber":Ljava/lang/String;
    .end local v1    # "isExist":Z
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    const-string v3, "\u7ed1\u5b9a\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 210
    return-void
.end method
