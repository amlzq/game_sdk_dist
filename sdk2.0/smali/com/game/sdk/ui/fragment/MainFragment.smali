.class public Lcom/game/sdk/ui/fragment/MainFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;,
        Lcom/game/sdk/ui/fragment/MainFragment$PayInitTask;,
        Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game/sdk/ui/fragment/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

.field private autoLoginCk:Landroid/widget/CheckBox;

.field private backIv:Landroid/widget/ImageView;

.field private changeAccountTv:Landroid/widget/TextView;

.field private chargeBtn:Landroid/widget/Button;

.field private currentIndex:I

.field private dialog:Lcom/game/sdk/view/ServiceDialog;

.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

.field private gameCountTv:Landroid/widget/TextView;

.field private gameMoneyListIv:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field headBitmap:Landroid/graphics/Bitmap;

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

.field private mobileIv:Landroid/widget/ImageView;

.field private mobileTv:Landroid/widget/TextView;

.field private moduleGridView:Landroid/widget/GridView;

.field private moduleGridView1:Landroid/widget/GridView;

.field moduleInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nickNameLayout:Landroid/widget/LinearLayout;

.field private nicknNameTv:Landroid/widget/TextView;

.field private payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

.field private platformCountTv:Landroid/widget/TextView;

.field private platformRefreshIv:Landroid/widget/ImageView;

.field private points:[Landroid/widget/ImageView;

.field private shareDialog:Lcom/game/sdk/view/ShareDialog;

.field private shareIv:Landroid/widget/ImageView;

.field private userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

.field private userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private vpAdapter:Lcom/game/sdk/adapter/ViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 134
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/MainFragment$1;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/adapter/MainModuleAdapter;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/MainModuleEngin;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    return-object v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/MainFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/fragment/MainFragment;->saveModuleList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/engin/PayCoinEngin;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-void
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/CustomRoundImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/UserInfoEngin;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getModuleList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    const/4 v1, 0x0

    .line 452
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "moduleStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get--moduleStr---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 454
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    const-class v3, Lcom/game/sdk/domain/ModuleInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 460
    .end local v2    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initPoint()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 282
    const-string v2, "gride_point_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 284
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 299
    iput v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    .line 301
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 302
    return-void

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 291
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 293
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private saveModuleList(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p2, "moduleList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 433
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "moduleStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save--moduleStr---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v1    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 437
    .restart local v1    # "moduleStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurDot(I)V
    .locals 3
    .param p1, "positon"    # I

    .prologue
    const/4 v2, 0x1

    .line 482
    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    iget v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 488
    iput p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "main_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 241
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v0

    const-string v1, "is_auto_login"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->initPoint()V

    .line 246
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    invoke-virtual {v0}, Lcom/game/sdk/engin/MainModuleEngin;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->getModuleList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 247
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    new-instance v0, Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/MainModuleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    .line 249
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 253
    new-instance v0, Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/MainModuleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    .line 254
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public initUserInfo()V
    .locals 2

    .prologue
    .line 270
    sget-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    .line 272
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 273
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 274
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 168
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 169
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 170
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/ui/MainActivity;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 171
    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->backIv:Landroid/widget/ImageView;

    .line 172
    const-string v2, "share_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareIv:Landroid/widget/ImageView;

    .line 173
    const-string v2, "nick_name_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nickNameLayout:Landroid/widget/LinearLayout;

    .line 175
    const-string v2, "user_head_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/view/CustomRoundImageView;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    .line 176
    const-string v2, "nick_name_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;

    .line 177
    const-string v2, "mobile_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;

    .line 178
    const-string v2, "mobile_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;

    .line 179
    const-string v2, "platform_count_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;

    .line 180
    const-string v2, "game_count_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;

    .line 182
    const-string v2, "platform_refresh_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformRefreshIv:Landroid/widget/ImageView;

    .line 183
    const-string v2, "game_money_list_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameMoneyListIv:Landroid/widget/ImageView;

    .line 184
    const-string v2, "charge_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    .line 186
    const-string v2, "auto_login_ck"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginCk:Landroid/widget/CheckBox;

    .line 187
    const-string v2, "change_account_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 189
    new-instance v2, Lcom/game/sdk/engin/UserInfoEngin;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/game/sdk/engin/UserInfoEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    .line 190
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/engin/MainModuleEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/MainModuleEngin;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    .line 196
    const-string v2, "viewpager"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 197
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 201
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "module_view_pager"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "moduleView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 204
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "module_view_pager"

    invoke-static {v3, v4, v5}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "moduleView1":Landroid/view/View;
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "main_module_grid_view"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 206
    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    .line 210
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "main_module_grid_view"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 209
    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView1:Landroid/widget/GridView;

    .line 212
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Lcom/game/sdk/adapter/ViewPagerAdapter;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lcom/game/sdk/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->vpAdapter:Lcom/game/sdk/adapter/ViewPagerAdapter;

    .line 217
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->vpAdapter:Lcom/game/sdk/adapter/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 218
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformRefreshIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameMoneyListIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nickNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginCk:Landroid/widget/CheckBox;

    new-instance v3, Lcom/game/sdk/ui/fragment/MainFragment$2;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/MainFragment$2;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 315
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "share_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 318
    new-instance v1, Lcom/game/sdk/view/ShareDialog;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v1, v2}, Lcom/game/sdk/view/ShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareDialog:Lcom/game/sdk/view/ShareDialog;

    .line 319
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareDialog:Lcom/game/sdk/view/ShareDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/ShareDialog;->show()V

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "nick_name_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 322
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 326
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "charge_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 327
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "platform_refresh_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 333
    new-instance v1, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 336
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "game_money_list_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 337
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 340
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "change_account_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 343
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 344
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v1}, Lcom/game/sdk/FYGameSDK;->switchUser()V

    .line 345
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 347
    :cond_6
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 494
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/domain/ModuleInfo;

    .line 495
    .local v1, "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    iget v2, v1, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v3, "SERVER_CALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    new-instance v2, Lcom/game/sdk/view/ServiceDialog;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v2, v3}, Lcom/game/sdk/view/ServiceDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->dialog:Lcom/game/sdk/view/ServiceDialog;

    .line 497
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->dialog:Lcom/game/sdk/view/ServiceDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/ServiceDialog;->show()V

    .line 499
    :cond_0
    iget v2, v1, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v3, "COMPAIGN_CENTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 502
    :cond_1
    iget v2, v1, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v3, "CHARGE_RECORD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 503
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v3, Lcom/game/sdk/ui/ChargeRecordActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 506
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget v2, v1, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v3, "SCORE_STORE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v3, Lcom/game/sdk/ui/ScoreStoreActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 510
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget v2, v1, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v3, "GAME_PACKAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v3, Lcom/game/sdk/ui/GamePackageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 514
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget v2, v1, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v3, "ACCOUNT_SAFETY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 515
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 518
    .end local v1    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    :cond_5
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 466
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 471
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment;->setCurDot(I)V

    .line 476
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 266
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    return-void
.end method
