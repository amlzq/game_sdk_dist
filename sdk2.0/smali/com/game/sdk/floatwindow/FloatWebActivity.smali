.class public Lcom/game/sdk/floatwindow/FloatWebActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "FloatWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatWebActivity"

.field public static ischarge:Z

.field public static isnowpay:Ljava/lang/String;

.field public static nowpayCode:Ljava/lang/String;

.field public static nowpayMsg:Ljava/lang/String;

.field public static paymentListener:Lcom/game/sdk/domain/OnPaymentListener;


# instance fields
.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "0"

    sput-object v0, Lcom/game/sdk/floatwindow/FloatWebActivity;->isnowpay:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/floatwindow/FloatWebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 58
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 64
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 212
    invoke-super/range {p0 .. p3}, Lcom/game/sdk/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    if-eqz p3, :cond_1

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 217
    .local v14, "extras":Landroid/os/Bundle;
    const/16 v18, 0x0

    .line 218
    .local v18, "photo":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_3

    .line 219
    const-string v2, "data"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .end local v18    # "photo":Landroid/graphics/Bitmap;
    check-cast v18, Landroid/graphics/Bitmap;

    .line 247
    .restart local v18    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    if-eqz v18, :cond_1

    .line 248
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 249
    .local v21, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 251
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 252
    .local v9, "byteArray":[B
    const/4 v2, 0x0

    invoke-static {v9, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v22

    .line 253
    .local v22, "streamStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "data:image/png;base64,"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 254
    .local v15, "image":Ljava/lang/String;
    const-string v2, "\u6b63\u5728\u4e0a\u4f20\u56fe\u50cf..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/game/sdk/utils/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    new-instance v2, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;-><init>(Lcom/game/sdk/floatwindow/FloatWebActivity;Ljava/lang/String;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/game/sdk/floatwindow/FloatWebActivity$UploadImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    .end local v9    # "byteArray":[B
    .end local v14    # "extras":Landroid/os/Bundle;
    .end local v15    # "image":Ljava/lang/String;
    .end local v18    # "photo":Landroid/graphics/Bitmap;
    .end local v21    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v22    # "streamStr":Ljava/lang/String;
    :cond_1
    if-nez p3, :cond_4

    .line 272
    :cond_2
    :goto_1
    return-void

    .line 222
    .restart local v14    # "extras":Landroid/os/Bundle;
    .restart local v18    # "photo":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 224
    .local v3, "selectedImage":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v2

    .line 225
    .local v4, "filePathColumn":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 226
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 228
    .local v10, "columnIndex":I
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 229
    .local v19, "picturePath":Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 231
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 234
    .local v8, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit16 v2, v2, 0xc8

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 236
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 238
    if-nez v18, :cond_0

    .line 240
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 241
    .local v23, "temp":Landroid/graphics/Bitmap;
    const/16 v2, 0x96

    const/16 v5, 0x96

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    goto/16 :goto_0

    .line 242
    .end local v23    # "temp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v12

    .line 243
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v3    # "selectedImage":Landroid/net/Uri;
    .end local v4    # "filePathColumn":[Ljava/lang/String;
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "columnIndex":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "extras":Landroid/os/Bundle;
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "photo":Landroid/graphics/Bitmap;
    .end local v19    # "picturePath":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/game/sdk/floatwindow/FloatWebActivity;->isnowpay:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "respMsg"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, "msg":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "errorCode"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "errorcode":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "respCode"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 267
    .local v20, "respCode":Ljava/lang/String;
    sput-object v16, Lcom/game/sdk/floatwindow/FloatWebActivity;->nowpayMsg:Ljava/lang/String;

    .line 268
    sput-object v20, Lcom/game/sdk/floatwindow/FloatWebActivity;->nowpayCode:Ljava/lang/String;

    .line 269
    const-string v2, "2"

    sput-object v2, Lcom/game/sdk/floatwindow/FloatWebActivity;->isnowpay:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onBackPressed()V

    .line 197
    invoke-virtual {p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->finish()V

    .line 198
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "sdk_float_web"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/game/sdk/floatwindow/FloatWebActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->url:Ljava/lang/String;

    .line 74
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->title:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "wv_content"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/game/sdk/floatwindow/FloatWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    .line 78
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/game/sdk/floatwindow/FloatWebActivity$1;

    invoke-direct {v2, p0}, Lcom/game/sdk/floatwindow/FloatWebActivity$1;-><init>(Lcom/game/sdk/floatwindow/FloatWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 87
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/game/sdk/floatwindow/FloatWebActivity$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/floatwindow/FloatWebActivity$2;-><init>(Lcom/game/sdk/floatwindow/FloatWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 119
    iget-object v1, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/game/sdk/ui/BaseActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 203
    invoke-virtual {p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->finish()V

    .line 204
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 187
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/game/sdk/floatwindow/FloatWebActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/game/sdk/ui/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 124
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/game/sdk/floatwindow/FloatWebActivity;->setRequestedOrientation(I)V

    .line 127
    sget-object v5, Lcom/game/sdk/floatwindow/FloatWebActivity;->isnowpay:Ljava/lang/String;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    sget-object v4, Lcom/game/sdk/floatwindow/FloatWebActivity;->nowpayCode:Ljava/lang/String;

    .line 129
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/game/sdk/floatwindow/FloatWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "money"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    .line 131
    .local v0, "charge_money":F
    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    new-instance v3, Lcom/game/sdk/domain/PaymentCallbackInfo;

    invoke-direct {v3}, Lcom/game/sdk/domain/PaymentCallbackInfo;-><init>()V

    .line 133
    .local v3, "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    iput v0, v3, Lcom/game/sdk/domain/PaymentCallbackInfo;->money:F

    .line 134
    const-string v5, "\u652f\u4ed8\u6210\u529f"

    iput-object v5, v3, Lcom/game/sdk/domain/PaymentCallbackInfo;->msg:Ljava/lang/String;

    .line 135
    sget-object v5, Lcom/game/sdk/floatwindow/FloatWebActivity;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v5, v3}, Lcom/game/sdk/domain/OnPaymentListener;->paymentSuccess(Lcom/game/sdk/domain/PaymentCallbackInfo;)V

    .line 136
    const-string v5, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p0, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager;

    move-result-object v5

    new-instance v6, Lcom/game/sdk/floatwindow/FloatWebActivity$3;

    invoke-direct {v6, p0}, Lcom/game/sdk/floatwindow/FloatWebActivity$3;-><init>(Lcom/game/sdk/floatwindow/FloatWebActivity;)V

    invoke-virtual {v5, v6}, Lcom/game/sdk/utils/ThreadPoolManager;->addTask(Ljava/lang/Runnable;)V

    .line 156
    .end local v3    # "pci":Lcom/game/sdk/domain/PaymentCallbackInfo;
    :cond_0
    const-string v5, "02"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    new-instance v2, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v2}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 158
    .local v2, "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const/4 v5, 0x2

    iput v5, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 159
    const-string v5, "\u652f\u4ed8\u53d6\u6d88"

    iput-object v5, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 160
    iput v0, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 161
    iget-object v5, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    sget-object v5, Lcom/game/sdk/floatwindow/FloatWebActivity;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v5, v2}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 164
    .end local v2    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    :cond_1
    const-string v5, "01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    new-instance v2, Lcom/game/sdk/domain/PaymentErrorMsg;

    invoke-direct {v2}, Lcom/game/sdk/domain/PaymentErrorMsg;-><init>()V

    .line 167
    .restart local v2    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    const/4 v5, 0x3

    iput v5, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->code:I

    .line 168
    sget-object v5, Lcom/game/sdk/floatwindow/FloatWebActivity;->nowpayMsg:Ljava/lang/String;

    iput-object v5, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    .line 169
    iput v0, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->money:F

    .line 170
    iget-object v5, v2, Lcom/game/sdk/domain/PaymentErrorMsg;->msg:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    sget-object v5, Lcom/game/sdk/floatwindow/FloatWebActivity;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    invoke-interface {v5, v2}, Lcom/game/sdk/domain/OnPaymentListener;->paymentError(Lcom/game/sdk/domain/PaymentErrorMsg;)V

    .line 173
    .end local v2    # "msg_e":Lcom/game/sdk/domain/PaymentErrorMsg;
    :cond_2
    const-string v5, "0"

    sput-object v5, Lcom/game/sdk/floatwindow/FloatWebActivity;->isnowpay:Ljava/lang/String;

    .line 177
    .end local v0    # "charge_money":F
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 178
    return-void
.end method
