.class public Lcom/game/sdk/ui/InitActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "InitActivity.java"

# interfaces
.implements Lcom/game/sdk/FYGameSDK$InitCloseListener;


# instance fields
.field private DELYED:I

.field private currentIndex:I

.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

.field private handler:Landroid/os/Handler;

.field i:I

.field loginRunnable:Ljava/lang/Runnable;

.field private points:[Landroid/widget/ImageView;

.field runnable:Ljava/lang/Runnable;

.field private view:Lcom/game/sdk/view/LVEatBeans;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->handler:Landroid/os/Handler;

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Lcom/game/sdk/ui/InitActivity;->DELYED:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/game/sdk/ui/InitActivity;->i:I

    .line 96
    new-instance v0, Lcom/game/sdk/ui/InitActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/InitActivity$1;-><init>(Lcom/game/sdk/ui/InitActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->loginRunnable:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/game/sdk/ui/InitActivity$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/InitActivity$2;-><init>(Lcom/game/sdk/ui/InitActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->runnable:Ljava/lang/Runnable;

    .line 20
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/InitActivity;)Lcom/game/sdk/view/LVEatBeans;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->view:Lcom/game/sdk/view/LVEatBeans;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/InitActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/InitActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/game/sdk/ui/InitActivity;->DELYED:I

    return v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/InitActivity;I)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/InitActivity;->setCurDot(I)V

    return-void
.end method

.method private initPoint()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 125
    const-string v2, "id"

    const-string v3, "guide_layout"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 127
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 140
    iput v4, p0, Lcom/game/sdk/ui/InitActivity;->currentIndex:I

    .line 142
    iget-object v2, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/game/sdk/ui/InitActivity;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 143
    return-void

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 134
    iget-object v2, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 136
    iget-object v2, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setCurDot(I)V
    .locals 2
    .param p1, "positon"    # I

    .prologue
    .line 149
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/game/sdk/ui/InitActivity;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->points:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/game/sdk/ui/InitActivity;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 155
    iput p1, p0, Lcom/game/sdk/ui/InitActivity;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "activity_init"

    return-object v0
.end method

.method public initClose()V
    .locals 0

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/game/sdk/ui/InitActivity;->finish()V

    .line 176
    return-void
.end method

.method public initData()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0, p0}, Lcom/game/sdk/FYGameSDK;->setCloseListener(Lcom/game/sdk/FYGameSDK$InitCloseListener;)V

    .line 81
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->init()V

    .line 82
    return-void
.end method

.method public initVars()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 46
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 47
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 52
    const-string v0, "id"

    const-string v1, "loading_view"

    invoke-static {p0, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/view/LVEatBeans;

    iput-object v0, p0, Lcom/game/sdk/ui/InitActivity;->view:Lcom/game/sdk/view/LVEatBeans;

    .line 53
    iget-object v0, p0, Lcom/game/sdk/ui/InitActivity;->view:Lcom/game/sdk/view/LVEatBeans;

    invoke-virtual {v0}, Lcom/game/sdk/view/LVEatBeans;->startAnim()V

    .line 75
    invoke-virtual {p0, p0}, Lcom/game/sdk/ui/InitActivity;->installCache(Landroid/content/Context;)V

    .line 76
    return-void
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
    .line 87
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "http"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v1, "httpCacheDir":Ljava/io/File;
    const-wide/32 v2, 0x6400000

    .line 89
    .local v2, "httpCacheSize":J
    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "httpCacheDir":Ljava/io/File;
    .end local v2    # "httpCacheSize":J
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
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
    .line 165
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
    .line 170
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 161
    return-void
.end method
