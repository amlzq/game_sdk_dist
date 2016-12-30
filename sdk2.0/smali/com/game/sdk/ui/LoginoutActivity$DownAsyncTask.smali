.class public Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;
.super Landroid/os/AsyncTask;
.source "LoginoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/LoginoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/LoginoutActivity;

.field type:I


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/LoginoutActivity;I)V
    .locals 1
    .param p2, "type"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->type:I

    .line 113
    iput p2, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->type:I

    .line 114
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 118
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->gameBoxDownUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/CheckUtil;->is404NotFound(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 126
    iget v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    const-class v2, Lcom/game/sdk/service/DownGameBoxService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->gameBoxDownUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/LoginoutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    const-class v2, Lcom/game/sdk/service/DownOtherApkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    iget-object v2, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    # getter for: Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;
    invoke-static {v2}, Lcom/game/sdk/ui/LoginoutActivity;->access$2(Lcom/game/sdk/ui/LoginoutActivity;)Lcom/game/sdk/domain/LoginOutInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/game/sdk/domain/LoginOutInfo;->typeVal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/LoginoutActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    const-string v2, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
