.class public Lcom/game/sdk/ui/LoginoutActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "LoginoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;
    }
.end annotation


# instance fields
.field private closeIv:Landroid/widget/ImageView;

.field private downGameBoxBtn:Landroid/widget/Button;

.field private leftIv:Landroid/widget/ImageView;

.field private loginOutBtn:Landroid/widget/Button;

.field private loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

.field private loginOutIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/LoginoutActivity;)Lcom/game/sdk/domain/LoginOutInfo;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    return-object v0
.end method


# virtual methods
.method public gameBoxDown(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 146
    const-string v2, "com.game.sdk.service.DownGameBoxService"

    .line 148
    .local v2, "serviceName":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 149
    const-string v2, "com.game.sdk.service.DownOtherApkService"

    .line 152
    :cond_0
    invoke-static {p0, v2}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    new-instance v0, Ljava/io/File;

    const-string v3, "game_box"

    invoke-static {v3}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    .end local v0    # "downFile":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 162
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lcom/game/sdk/utils/CheckUtil;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    new-instance v3, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;

    invoke-direct {v3, p0, p1}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;-><init>(Lcom/game/sdk/ui/LoginoutActivity;I)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/LoginoutActivity$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 165
    :cond_2
    const-string v3, "\u8bf7\u5728WIFI\u7f51\u7edc\u4e0b\u4f53\u9a8c"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v0    # "downFile":Ljava/io/File;
    :cond_3
    const-string v3, "\u5e94\u7528\u4e0b\u8f7d\u4e2d"

    invoke-static {p0, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "activity_loginout"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 75
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->leftIv:Landroid/widget/ImageView;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :cond_0
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logout:Lcom/game/sdk/domain/LoginOutInfo;

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logout:Lcom/game/sdk/domain/LoginOutInfo;

    iput-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    .line 81
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/LoginOutInfo;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 83
    :cond_1
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 50
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 55
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 56
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x190

    invoke-static {p0, v1}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 58
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 61
    const-string v1, "left_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->leftIv:Landroid/widget/ImageView;

    .line 62
    const-string v1, "close_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->closeIv:Landroid/widget/ImageView;

    .line 63
    const-string v1, "login_out_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutIv:Landroid/widget/ImageView;

    .line 64
    const-string v1, "login_out_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutBtn:Landroid/widget/Button;

    .line 65
    const-string v1, "down_game_box_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/LoginoutActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->downGameBoxBtn:Landroid/widget/Button;

    .line 66
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->closeIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/game/sdk/ui/LoginoutActivity;->downGameBoxBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "close_iv"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->finish()V

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "login_out_btn"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginoutActivity;->finish()V

    .line 93
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 94
    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    .line 95
    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 96
    sget-object v0, Lcom/game/sdk/TTWSDKActivity;->instance:Lcom/game/sdk/TTWSDKActivity;

    invoke-virtual {v0}, Lcom/game/sdk/TTWSDKActivity;->finish()V

    .line 97
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "login_out_iv"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/LoginoutActivity;->loginOutInfo:Lcom/game/sdk/domain/LoginOutInfo;

    iget v0, v0, Lcom/game/sdk/domain/LoginOutInfo;->type:I

    if-nez v0, :cond_2

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->gameBoxDown(I)V

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "down_game_box_btn"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginoutActivity;->gameBoxDown(I)V

    .line 107
    :cond_3
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
