.class public Lcom/game/sdk/ui/InitActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "InitActivity.java"

# interfaces
.implements Lcom/game/sdk/FYGameSDK$InitCloseListener;


# instance fields
.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

.field private handler:Landroid/os/Handler;

.field i:I

.field private initLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->handler:Landroid/os/Handler;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/InitActivity;->i:I

    .line 29
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->finish()V

    .line 157
    const-string v0, "init ---> finish"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 159
    const-string v0, "anim"

    const-string v1, "fysdk_init_enter"

    invoke-static {p0, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "anim"

    const-string v2, "fysdk_init_exit"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/game/sdk/ui/InitActivity;->overridePendingTransition(II)V

    .line 160
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "fysdk_activity_init"

    return-object v0
.end method

.method public initClose()V
    .locals 1

    .prologue
    .line 149
    invoke-static {p0}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/game/sdk/ui/InitActivity;->finish()V

    .line 152
    :cond_0
    return-void
.end method

.method public initData()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/game/sdk/ui/InitActivity$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/InitActivity$1;-><init>(Lcom/game/sdk/ui/InitActivity;)V

    .line 98
    const-wide/16 v2, 0x320

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0, p0}, Lcom/game/sdk/FYGameSDK;->setCloseListener(Lcom/game/sdk/FYGameSDK$InitCloseListener;)V

    .line 101
    return-void
.end method

.method public initVars()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 47
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 48
    return-void
.end method

.method public initViews()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 54
    const-string v4, "id"

    const-string v5, "init_bg"

    invoke-static {p0, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/game/sdk/ui/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/game/sdk/ui/InitActivity;->initLayout:Landroid/widget/RelativeLayout;

    .line 55
    invoke-virtual {p0, p0}, Lcom/game/sdk/ui/InitActivity;->installCache(Landroid/content/Context;)V

    .line 57
    const-string v4, "game_init_image"

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->getInitLogoFileBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    .local v1, "initBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 60
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/game/sdk/ui/InitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 61
    .local v2, "initDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/game/sdk/ui/InitActivity;->initLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    .end local v2    # "initDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/ui/InitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 64
    .local v0, "cf":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 66
    .local v3, "ori":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 67
    iget-object v4, p0, Lcom/game/sdk/ui/InitActivity;->initLayout:Landroid/widget/RelativeLayout;

    const-string v5, "drawable"

    const-string v6, "launcher_h_default_icon"

    invoke-static {p0, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 68
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/game/sdk/ui/InitActivity;->initLayout:Landroid/widget/RelativeLayout;

    const-string v5, "drawable"

    const-string v6, "launcher_v_default_icon"

    invoke-static {p0, v5, v6}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public installCache(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "http"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v1, "httpCacheDir":Ljava/io/File;
    const-wide/32 v2, 0x6400000

    .line 108
    .local v2, "httpCacheSize":J
    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "httpCacheDir":Ljava/io/File;
    .end local v2    # "httpCacheSize":J
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP response cache installation failed:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 139
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
    .line 144
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 133
    const-string v0, "InitActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 134
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 118
    const-string v0, "InitActivity"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 119
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method public rotaAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 80
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 82
    .local v0, "ra":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 83
    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 84
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 85
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    .line 86
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 87
    return-object v0
.end method
