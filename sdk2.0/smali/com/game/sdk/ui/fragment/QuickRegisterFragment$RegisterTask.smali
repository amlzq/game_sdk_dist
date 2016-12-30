.class Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;
.super Landroid/os/AsyncTask;
.source "QuickRegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/fragment/QuickRegisterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
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
.field private password:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->userName:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->password:Ljava/lang/String;

    .line 220
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Lcom/game/sdk/engin/RegisterAccountEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v1, v1, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/game/sdk/engin/RegisterAccountEngin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .local v0, "loginEngin":Lcom/game/sdk/engin/RegisterAccountEngin;
    invoke-virtual {v0}, Lcom/game/sdk/engin/RegisterAccountEngin;->run()Z

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v0}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 239
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "\u6ce8\u518c\u8d26\u53f7\u6210\u529f----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, "\u6ce8\u518c\u8d26\u53f7\u5931\u8d25----"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->this$0:Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v1, "\u6ce8\u518c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 224
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 225
    return-void
.end method
