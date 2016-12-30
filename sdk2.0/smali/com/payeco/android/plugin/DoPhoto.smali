.class public Lcom/payeco/android/plugin/DoPhoto;
.super Landroid/os/AsyncTask;


# instance fields
.field bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

.field cameraBackId:Ljava/lang/String;

.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/payeco/android/plugin/DoPhoto;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/payeco/android/plugin/DoPhoto;->cameraBackId:Ljava/lang/String;

    iput-object p3, p0, Lcom/payeco/android/plugin/DoPhoto;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payeco/android/plugin/DoPhoto;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x1f4

    :try_start_0
    iget-object v2, p0, Lcom/payeco/android/plugin/DoPhoto;->context:Landroid/content/Context;

    const-string v2, "PhotoSize"

    invoke-static {v2}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/payeco/android/plugin/util/BitmapUtil;->getExifOrientation(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    sget-object v5, Lcom/payeco/android/plugin/h;->d:Ljava/lang/String;

    invoke-static {v3, v4, v5, v1, v2}, Lcom/payeco/android/plugin/util/BitmapUtil;->zoopImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v1, Lcom/payeco/android/plugin/h;->d:Ljava/lang/String;

    const/16 v2, 0x64

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lcom/payeco/android/plugin/util/BitmapUtil;->getImagToRam(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/payeco/android/plugin/util/BitmapUtil;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data:image/jpg;base64,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/payeco/android/plugin/DoPhoto;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payecoImg.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/h;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/payeco/android/plugin/DoPhoto;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/DoPhoto;->cameraBackId:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    sget-object v3, Lcom/payeco/android/plugin/h;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/DoPhoto;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/DoPhoto;->cameraBackId:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "\u62cd\u7167\u51fa\u9519\uff01"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
