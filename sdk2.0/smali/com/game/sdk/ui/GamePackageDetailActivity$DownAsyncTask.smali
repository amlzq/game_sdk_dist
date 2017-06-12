.class public Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;
.super Landroid/os/AsyncTask;
.source "GamePackageDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/ui/GamePackageDetailActivity;
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
.field final synthetic this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;


# direct methods
.method public constructor <init>(Lcom/game/sdk/ui/GamePackageDetailActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 263
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 270
    new-instance v0, Ljava/io/File;

    const-string v2, "game_box"

    invoke-static {v2}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 274
    iget-object v2, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-virtual {v2}, Lcom/game/sdk/ui/GamePackageDetailActivity;->downBoxApp()V

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->this$0:Lcom/game/sdk/ui/GamePackageDetailActivity;

    invoke-virtual {v2, v1}, Lcom/game/sdk/ui/GamePackageDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/GamePackageDetailActivity$DownAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
