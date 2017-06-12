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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/ui/LoginoutActivity;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/LoginoutActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->fileName:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->url:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/CheckUtil;->getFileLengthByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 240
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->fileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 244
    iget-object v2, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/game/sdk/ui/LoginoutActivity;->downBoxApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget-object v2, p0, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/LoginoutActivity;

    invoke-virtual {v2, v1}, Lcom/game/sdk/ui/LoginoutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
