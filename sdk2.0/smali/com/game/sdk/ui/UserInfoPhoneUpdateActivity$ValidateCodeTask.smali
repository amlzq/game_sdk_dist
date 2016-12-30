.class Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;
.super Landroid/os/AsyncTask;
.source "UserInfoPhoneUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/game/sdk/domain/ResultInfo",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->userName:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->phoneNumber:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/game/sdk/engin/BindPhoneValidateEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    .line 166
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->phoneNumber:Ljava/lang/String;

    .line 165
    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/BindPhoneValidateEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v0, "validateEngin":Lcom/game/sdk/engin/BindPhoneValidateEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/BindPhoneValidateEngin;->run()Lcom/game/sdk/domain/ResultInfo;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/game/sdk/domain/ResultInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "resultInfo":Lcom/game/sdk/domain/ResultInfo;, "Lcom/game/sdk/domain/ResultInfo<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 172
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->sendDialog:Lcom/game/sdk/view/CustomDialog;
    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->access$2(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Lcom/game/sdk/view/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 174
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v0, v2, :cond_0

    .line 175
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    const-string v1, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    const-string v0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    # invokes: Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->codeRefresh()V
    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->access$3(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)V

    .line 178
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 180
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->validateCodeEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->access$4(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_0
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 185
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    # getter for: Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->validateCodeEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->access$4(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/ResultInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 161
    return-void
.end method
