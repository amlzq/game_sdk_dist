.class public Lcom/game/sdk/utils/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field public static mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenWxShareText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const-string v1, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "inImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 182
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 183
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Title"

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static loadImageUri(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v3, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v4, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v4, :cond_0

    .line 215
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v4, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 218
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 243
    return-object v3

    .line 218
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "imgUrl":Ljava/lang/String;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 221
    .local v2, "request":Lokhttp3/Request;
    sget-object v5, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 224
    .local v0, "call":Lokhttp3/Call;
    new-instance v5, Lcom/game/sdk/utils/ShareUtil$3;

    invoke-direct {v5, v3, p0}, Lcom/game/sdk/utils/ShareUtil$3;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v0, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method

.method public static openQQShareWithText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isQQAvilible(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 249
    const-string v3, "\u8bf7\u5b89\u88c5QQ"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v0, "com.tencent.mobileqq.activity.JumpActivity"

    .line 255
    .local v0, "activityName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.tencent.mobileqq"

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "\u6e38\u620fSDK\u5206\u4eab"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    const-string v4, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v4, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v4, :cond_2

    .line 156
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v4, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 159
    :cond_2
    const/4 v0, 0x0

    .line 160
    .local v0, "bmp":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 161
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v4, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    .line 167
    :goto_1
    invoke-static {p0, v0}, Lcom/game/sdk/utils/ShareUtil;->getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v3

    .line 169
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 172
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.tencent.mm"

    const-string v5, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const-string v4, "Kdescription"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v4, "\u5206\u4eab"

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 163
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 164
    const-string v5, "drawable"

    const-string v6, "quick_title_icon"

    invoke-static {p0, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 163
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 95
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    const-string v3, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v3, :cond_1

    .line 101
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 104
    :cond_1
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v3, "\u6b63\u5728\u5206\u4eab"

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .local v2, "shareDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 108
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 109
    .local v1, "request":Lokhttp3/Request;
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 112
    .local v0, "call":Lokhttp3/Call;
    new-instance v3, Lcom/game/sdk/utils/ShareUtil$2;

    invoke-direct {v3, v2, p0, p3, p1}, Lcom/game/sdk/utils/ShareUtil$2;-><init>(Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method

.method public static openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v5, Lcom/game/sdk/view/CustomDialog;

    const-string v0, "\u6b63\u5728\u5206\u4eab"

    invoke-direct {v5, p0, v0}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    .local v5, "shareDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 44
    sget-object v0, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 48
    :cond_1
    new-instance v0, Lcom/game/sdk/utils/ShareUtil$1;

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/game/sdk/utils/ShareUtil$1;-><init>(Ljava/util/List;Landroid/content/Context;ILjava/lang/String;Lcom/game/sdk/view/CustomDialog;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 90
    invoke-virtual {v0, v1}, Lcom/game/sdk/utils/ShareUtil$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static openWeiboShareWithImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeiboAvilible(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 269
    const-string v7, "\u8bf7\u5b89\u88c5\u5fae\u535a"

    invoke-static {p0, v7}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 273
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "text/plain"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 277
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/high16 v7, 0x10000

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 278
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v4, "com.sina.weibo"

    .line 279
    .local v4, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 281
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 289
    :goto_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 281
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 282
    .local v0, "each":Landroid/content/pm/ResolveInfo;
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 283
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 284
    move-object v1, v0

    .line 285
    goto :goto_1
.end method
