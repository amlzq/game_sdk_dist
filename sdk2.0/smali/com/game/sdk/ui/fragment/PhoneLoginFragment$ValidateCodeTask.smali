.class Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;
.super Landroid/os/AsyncTask;
.source "PhoneLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/PhoneLoginFragment;
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
.field mobileNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;Ljava/lang/String;)V
    .locals 0
    .param p2, "mobileNumber"    # Ljava/lang/String;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 811
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->mobileNumber:Ljava/lang/String;

    .line 812
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;
    .locals 3
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
    .line 821
    new-instance v0, Lcom/game/sdk/engin/ValidateEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->mobileNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/ValidateEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 822
    .local v0, "validateEngin":Lcom/game/sdk/engin/ValidateEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/ValidateEngin;->run()Lcom/game/sdk/domain/ResultInfo;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->doInBackground([Ljava/lang/String;)Lcom/game/sdk/domain/ResultInfo;

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

    .line 827
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 828
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 829
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    if-ne v0, v2, :cond_1

    .line 831
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 832
    const-string v0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # invokes: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->codeRefresh()V
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$3(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)V

    .line 834
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 836
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :goto_0
    sget v0, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    if-ne v0, v2, :cond_0

    .line 848
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 850
    :cond_0
    return-void

    .line 837
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Lcom/game/sdk/domain/ResultInfo;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 838
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 839
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    .line 841
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    # getter for: Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->validateEt:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->access$2(Lcom/game/sdk/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->this$0:Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v1, p1, Lcom/game/sdk/domain/ResultInfo;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 844
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->isGetValidate:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/game/sdk/domain/ResultInfo;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment$ValidateCodeTask;->onPostExecute(Lcom/game/sdk/domain/ResultInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 816
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 817
    return-void
.end method
