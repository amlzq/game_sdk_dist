.class Lcom/game/sdk/utils/ShareUtil$5;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/utils/ShareUtil;->openWeiboShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$shareDialog:Lcom/game/sdk/view/CustomDialog;


# direct methods
.method constructor <init>(Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$shareDialog:Lcom/game/sdk/view/CustomDialog;

    iput-object p2, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$content:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 295
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v10, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$shareDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v10}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 303
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    .line 307
    .local v1, "bytes":[B
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$ctx:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/game/sdk/utils/ShareUtil;->getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v9

    .line 311
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_0

    .line 335
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "image/*"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v10, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$ctx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 319
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/high16 v10, 0x10000

    invoke-virtual {v8, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 320
    .local v5, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "com.sina.weibo"

    .line 321
    .local v6, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 323
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 331
    :goto_1
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v10, "android.intent.extra.TEXT"

    iget-object v11, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$content:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {v4, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    iget-object v10, p0, Lcom/game/sdk/utils/ShareUtil$5;->val$ctx:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 324
    .local v2, "each":Landroid/content/pm/ResolveInfo;
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 325
    .local v7, "pkgName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 326
    move-object v3, v2

    .line 327
    goto :goto_1
.end method
