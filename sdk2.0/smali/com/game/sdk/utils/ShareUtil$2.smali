.class Lcom/game/sdk/utils/ShareUtil$2;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/utils/ShareUtil;->openWXShareWithImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$shareDialog:Lcom/game/sdk/view/CustomDialog;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$shareDialog:Lcom/game/sdk/view/CustomDialog;

    iput-object p2, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$type:I

    iput-object p4, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$content:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 116
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v6, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$shareDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/CustomDialog;->dismiss()V

    .line 124
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    .line 128
    .local v2, "bytes":[B
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 129
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$ctx:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/game/sdk/utils/ShareUtil;->getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v5

    .line 131
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "com.tencent.mm.ui.tools.ShareImgUI"

    .line 134
    .local v0, "activityName":Ljava/lang/String;
    iget v6, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 135
    const-string v0, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    .line 137
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.tencent.mm"

    invoke-direct {v3, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    const-string v6, "Kdescription"

    iget-object v7, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$content:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v6, p0, Lcom/game/sdk/utils/ShareUtil$2;->val$ctx:Landroid/content/Context;

    const-string v7, "\u5206\u4eab"

    invoke-static {v4, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
