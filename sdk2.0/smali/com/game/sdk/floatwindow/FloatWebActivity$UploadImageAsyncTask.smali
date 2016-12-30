.class public Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "FloatWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/sdk/floatwindow/FloatWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private imageBase64str:Ljava/lang/String;

.field final synthetic this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;


# direct methods
.method public constructor <init>(Lcom/game/sdk/floatwindow/FloatWebActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "imageBase64str"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->imageBase64str:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/GetDataImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/utils/GetDataImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->imageBase64str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/utils/GetDataImpl;->uploadImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 295
    :try_start_0
    invoke-static {}, Lcom/game/sdk/utils/DialogUtil;->dismissDialog()V

    .line 296
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "rjson":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 298
    .local v2, "status":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 299
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    # getter for: Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/game/sdk/floatwindow/FloatWebActivity;->access$2(Lcom/game/sdk/floatwindow/FloatWebActivity;)Landroid/webkit/WebView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:previewImage(\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "rjson":Lorg/json/JSONObject;
    .end local v2    # "status":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->this$0:Lcom/game/sdk/floatwindow/FloatWebActivity;

    const-string v5, "\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0a\u4f20"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
