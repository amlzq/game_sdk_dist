.class Lcom/game/sdk/utils/ImageCache$1;
.super Landroid/os/AsyncTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/utils/ImageCache;->getBitmap(Ljava/lang/String;Landroid/content/Context;Lcom/game/sdk/utils/ImageCache$ImageCallBack;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$imagecallback:Lcom/game/sdk/utils/ImageCache$ImageCallBack;

.field private final synthetic val$imgurl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/game/sdk/utils/ImageCache$ImageCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/ImageCache$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/game/sdk/utils/ImageCache$1;->val$imgurl:Ljava/lang/String;

    iput-object p3, p0, Lcom/game/sdk/utils/ImageCache$1;->val$imagecallback:Lcom/game/sdk/utils/ImageCache$ImageCallBack;

    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/game/sdk/utils/ImageCache$1;->val$ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/game/sdk/utils/GetDataImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/utils/GetDataImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/game/sdk/utils/ImageCache$1;->val$imgurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/game/sdk/utils/GetDataImpl;->getImgFromNet(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    :goto_0
    if-eqz v2, :cond_0

    .line 68
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 69
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 70
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 71
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 72
    const/4 v4, -0x1

    const/16 v5, 0x4000

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/ImageCache;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 73
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .end local v3    # "opt":Landroid/graphics/BitmapFactory$Options;
    .local v0, "bm_net":Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 62
    .end local v0    # "bm_net":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    iget-object v4, p0, Lcom/game/sdk/utils/ImageCache$1;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 78
    iget-object v5, p0, Lcom/game/sdk/utils/ImageCache$1;->val$ctx:Landroid/content/Context;

    const-string v6, "drawable"

    const-string v7, "user_default_icon"

    invoke-static {v5, v6, v7}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 77
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bm_net":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/game/sdk/utils/ImageCache$1;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/game/sdk/utils/ImageCache$1;->val$imagecallback:Lcom/game/sdk/utils/ImageCache$ImageCallBack;

    invoke-interface {v0, p1}, Lcom/game/sdk/utils/ImageCache$ImageCallBack;->LoadImageFromIntenet(Landroid/graphics/Bitmap;)V

    .line 88
    # getter for: Lcom/game/sdk/utils/ImageCache;->bitmapCaches:Ljava/util/HashMap;
    invoke-static {}, Lcom/game/sdk/utils/ImageCache;->access$0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/utils/ImageCache$1;->val$imgurl:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/game/sdk/utils/ImageCache$1;->val$imgurl:Ljava/lang/String;

    iget-object v1, p0, Lcom/game/sdk/utils/ImageCache$1;->val$ctx:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/game/sdk/utils/ImageCache;->write2sdcard(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/game/sdk/utils/ImageCache$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
