.class public Lcom/game/sdk/utils/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field public static mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenWxShareText(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .param p0, "inContext"    # Landroid/content/Context;
    .param p1, "inImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 150
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Title"

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
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
    .line 180
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    sget-object v4, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v4, :cond_0

    .line 183
    new-instance v4, Lokhttp3/OkHttpClient;

    invoke-direct {v4}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v4, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    return-object v3

    .line 186
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, "imgUrl":Ljava/lang/String;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 189
    .local v2, "request":Lokhttp3/Request;
    sget-object v5, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 192
    .local v0, "call":Lokhttp3/Call;
    new-instance v5, Lcom/game/sdk/utils/ShareUtil$3;

    invoke-direct {v5, v3, p0}, Lcom/game/sdk/utils/ShareUtil$3;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v0, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method

.method public static openQQShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 217
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isQQAvilible(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    const-string v3, "\u8bf7\u5b89\u88c5QQ"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v3, "\u6b63\u5728\u5206\u4eab"

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    .local v2, "shareDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 225
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v3, :cond_1

    .line 226
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 229
    :cond_1
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 230
    .local v1, "request":Lokhttp3/Request;
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 233
    .local v0, "call":Lokhttp3/Call;
    new-instance v3, Lcom/game/sdk/utils/ShareUtil$4;

    invoke-direct {v3, v2, p0}, Lcom/game/sdk/utils/ShareUtil$4;-><init>(Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method

.method public static openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 94
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    const-string v3, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 99
    :cond_0
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v3, :cond_1

    .line 100
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 103
    :cond_1
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v3, "\u6b63\u5728\u5206\u4eab"

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .local v2, "shareDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 107
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 108
    .local v1, "request":Lokhttp3/Request;
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 111
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
    .line 35
    .local p2, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "\u8bf7\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p0, v0}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v5, Lcom/game/sdk/view/CustomDialog;

    const-string v0, "\u6b63\u5728\u5206\u4eab"

    invoke-direct {v5, p0, v0}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .local v5, "shareDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 43
    sget-object v0, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 47
    :cond_1
    new-instance v0, Lcom/game/sdk/utils/ShareUtil$1;

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/game/sdk/utils/ShareUtil$1;-><init>(Ljava/util/List;Landroid/content/Context;ILjava/lang/String;Lcom/game/sdk/view/CustomDialog;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 89
    invoke-virtual {v0, v1}, Lcom/game/sdk/utils/ShareUtil$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static openWeiboShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWeiboAvilible(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    const-string v3, "\u8be5\u5e94\u7528\u672a\u5b89\u88c5!"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v3, "\u6b63\u5728\u5206\u4eab"

    invoke-direct {v2, p0, v3}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    .local v2, "shareDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 283
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v3, :cond_1

    .line 284
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 287
    :cond_1
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 288
    .local v1, "request":Lokhttp3/Request;
    sget-object v3, Lcom/game/sdk/utils/ShareUtil;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 291
    .local v0, "call":Lokhttp3/Call;
    new-instance v3, Lcom/game/sdk/utils/ShareUtil$5;

    invoke-direct {v3, v2, p0, p1}, Lcom/game/sdk/utils/ShareUtil$5;-><init>(Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0
.end method
