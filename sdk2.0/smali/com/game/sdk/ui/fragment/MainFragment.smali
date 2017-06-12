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
        Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;,
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

.field private bgLayout:Landroid/widget/LinearLayout;

.field private boxDownDialog:Lcom/game/sdk/view/BoxDownDialog;

.field private callDialog:Lcom/game/sdk/view/ServiceDialog;

.field private changeAccountTv:Landroid/widget/TextView;

.field private chargeBtn:Landroid/widget/Button;

.field private currentIndex:I

.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

.field private gameCountLayout:Landroid/widget/LinearLayout;

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

.field private mobileLayout:Landroid/widget/LinearLayout;

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

.field private platformCountLayout:Landroid/widget/LinearLayout;

.field private platformCountTv:Landroid/widget/TextView;

.field private platformRefreshIv:Landroid/widget/ImageView;

.field private points:[Landroid/widget/ImageView;

.field private shareDialog:Lcom/game/sdk/view/ShareDialog;

.field private shareIv:Landroid/widget/ImageView;

.field private titleLayout:Landroid/widget/RelativeLayout;

.field private titleLogo:Landroid/widget/ImageView;

.field private userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

.field private userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

.field private userMemberLevelIv:Landroid/widget/ImageView;

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
    .line 78
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 165
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/MainFragment$1;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/adapter/MainModuleAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/MainModuleEngin;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    return-object v0
.end method

.method static synthetic access$12(Lcom/game/sdk/ui/fragment/MainFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0, p1, p2}, Lcom/game/sdk/ui/fragment/MainFragment;->saveModuleList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$13(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/engin/PayCoinEngin;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-void
.end method

.method static synthetic access$14(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/PayCoinEngin;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->payCoinEngin:Lcom/game/sdk/engin/PayCoinEngin;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/view/CustomRoundImageView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/MainFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userMemberLevelIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/MainFragment;)Lcom/game/sdk/engin/UserInfoEngin;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

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
    .line 643
    const/4 v1, 0x0

    .line 645
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v3

    .line 646
    const-string v4, ""

    .line 645
    invoke-virtual {v3, p1, v4}, Lcom/game/sdk/utils/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .local v2, "moduleStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get--moduleStr---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 648
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 649
    const-class v3, Lcom/game/sdk/domain/ModuleInfo;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 654
    .end local v2    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
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

    .line 355
    const-string v2, "gride_point_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 357
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    .line 360
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 372
    iput v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    .line 374
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    iget v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 375
    return-void

    .line 362
    :cond_0
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    .line 364
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 366
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 360
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
    .line 625
    .local p2, "moduleList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/ModuleInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 626
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "moduleStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save--moduleStr---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v1    # "moduleStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 630
    .restart local v1    # "moduleStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 631
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

    .line 676
    if-ltz p1, :cond_0

    if-gt p1, v2, :cond_0

    iget v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    if-ne v0, p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->points:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 682
    iput p1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->currentIndex:I

    goto :goto_0
.end method


# virtual methods
.method public downBoxApp(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 829
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_4

    .line 830
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 832
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "score_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "package_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 840
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 841
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "gamecenter_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 844
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 845
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "my_coin_down_game_box"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 848
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d\u6e38\u620f\u76d2\u5b50"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 849
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/service/DownGameBoxService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 850
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "downUrl"

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 855
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 853
    :cond_4
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public gameBoxDown(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 808
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "com.game.sdk.service.DownGameBoxService"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/SystemUtil;->isServiceWork(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 810
    new-instance v0, Ljava/io/File;

    const-string v1, "game_box"

    invoke-static {v1}, Lcom/game/sdk/utils/PathUtil;->getApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v0, "downFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    invoke-static {v0}, Lcom/game/sdk/utils/ZipUtil;->isArchiveFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 813
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/InItInfo;->boxInfo:Lcom/game/sdk/domain/BoxInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/BoxInfo;->boxDownUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    new-instance v1, Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;

    invoke-direct {v1, p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;I)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/fragment/MainFragment$DownAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 826
    .end local v0    # "downFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 817
    .restart local v0    # "downFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 818
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u76d2\u5b50\u6587\u4ef6\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_2
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment;->downBoxApp(I)V

    goto :goto_0

    .line 824
    .end local v0    # "downFile":Ljava/io/File;
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6e38\u620f\u76d2\u5b50\u4e0b\u8f7d\u4e2d"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "fysdk_main_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 308
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->initTheme()V

    .line 310
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v0, v0, Lcom/game/sdk/domain/InItInfo;->isSpeedUp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 312
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    invoke-virtual {v0}, Lcom/game/sdk/engin/MainModuleEngin;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->getModuleList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    .line 327
    :cond_1
    new-instance v0, Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/MainModuleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    .line 328
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView1:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->adapter:Lcom/game/sdk/adapter/MainModuleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$MainModuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 331
    return-void

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public initTheme()V
    .locals 19

    .prologue
    .line 382
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v16, :cond_0

    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLogo:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    sget-object v17, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    :cond_0
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v16, :cond_2

    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 387
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 388
    .local v2, "bgColor":Ljava/lang/String;
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 389
    .local v9, "headColor":Ljava/lang/String;
    sget-object v16, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 390
    .local v3, "btnColor":Ljava/lang/String;
    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->bgLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 392
    .local v1, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 395
    invoke-static {v9}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 396
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/GradientDrawable;

    .line 398
    .local v14, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v16, "#00000000"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 409
    .end local v1    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v11

    .line 415
    .local v11, "roundRadius":I
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 417
    .local v4, "fillColor":I
    const-string v16, "#979696"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 420
    .local v5, "fillColorPressed":I
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 421
    .local v7, "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 422
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 425
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 426
    .local v8, "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 427
    int-to-float v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 429
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 432
    .local v13, "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v10, 0x10100a7

    .line 433
    .local v10, "pressed":I
    const v15, 0x101009d

    .line 434
    .local v15, "window_focused":I
    const v6, 0x101009c

    .line 435
    .local v6, "focused":I
    const v12, 0x10100a1

    .line 437
    .local v12, "selected":I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v10, v16, v17

    const/16 v17, 0x1

    aput v15, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 438
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v10, v16, v17

    const/16 v17, 0x1

    neg-int v0, v6

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 439
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v12, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 440
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v6, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 441
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    neg-int v0, v12

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x1

    neg-int v0, v6

    move/from16 v18, v0

    aput v18, v16, v17

    const/16 v17, 0x2

    neg-int v0, v10

    move/from16 v18, v0

    aput v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    .end local v2    # "bgColor":Ljava/lang/String;
    .end local v3    # "btnColor":Ljava/lang/String;
    .end local v4    # "fillColor":I
    .end local v5    # "fillColorPressed":I
    .end local v6    # "focused":I
    .end local v7    # "gdNormal":Landroid/graphics/drawable/GradientDrawable;
    .end local v8    # "gdPressed":Landroid/graphics/drawable/GradientDrawable;
    .end local v9    # "headColor":Ljava/lang/String;
    .end local v10    # "pressed":I
    .end local v11    # "roundRadius":I
    .end local v12    # "selected":I
    .end local v13    # "stateDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "window_focused":I
    :cond_2
    return-void

    .line 400
    .restart local v1    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v2    # "bgColor":Ljava/lang/String;
    .restart local v3    # "btnColor":Ljava/lang/String;
    .restart local v9    # "headColor":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/GradientDrawable;

    .line 401
    .restart local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "#"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 404
    .end local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/GradientDrawable;

    .line 405
    .restart local v14    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v16, "#00000000"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initUserInfo()V
    .locals 2

    .prologue
    .line 343
    sget-boolean v1, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    .line 345
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 346
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 347
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 349
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 212
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 213
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/ui/MainActivity;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 215
    new-instance v1, Lcom/game/sdk/view/BoxDownDialog;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v1, v2}, Lcom/game/sdk/view/BoxDownDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->boxDownDialog:Lcom/game/sdk/view/BoxDownDialog;

    .line 217
    const-string v1, "bg_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->bgLayout:Landroid/widget/LinearLayout;

    .line 218
    const-string v1, "common_title"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLayout:Landroid/widget/RelativeLayout;

    .line 220
    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->backIv:Landroid/widget/ImageView;

    .line 221
    const-string v1, "game_sdk_logo"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->titleLogo:Landroid/widget/ImageView;

    .line 222
    const-string v1, "share_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareIv:Landroid/widget/ImageView;

    .line 223
    const-string v1, "nick_name_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nickNameLayout:Landroid/widget/LinearLayout;

    .line 224
    const-string v1, "mobile_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileLayout:Landroid/widget/LinearLayout;

    .line 226
    const-string v1, "user_head_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/view/CustomRoundImageView;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    .line 227
    const-string v1, "user_member_level_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userMemberLevelIv:Landroid/widget/ImageView;

    .line 228
    const-string v1, "nick_name_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nicknNameTv:Landroid/widget/TextView;

    .line 229
    const-string v1, "mobile_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileIv:Landroid/widget/ImageView;

    .line 230
    const-string v1, "mobile_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileTv:Landroid/widget/TextView;

    .line 232
    const-string v1, "platform_count_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountLayout:Landroid/widget/LinearLayout;

    .line 233
    const-string v1, "game_count_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountLayout:Landroid/widget/LinearLayout;

    .line 235
    const-string v1, "platform_count_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountTv:Landroid/widget/TextView;

    .line 236
    const-string v1, "game_count_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountTv:Landroid/widget/TextView;

    .line 238
    const-string v1, "platform_refresh_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformRefreshIv:Landroid/widget/ImageView;

    .line 239
    const-string v1, "game_money_list_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameMoneyListIv:Landroid/widget/ImageView;

    .line 240
    const-string v1, "charge_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    .line 242
    const-string v1, "auto_login_ck"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginCk:Landroid/widget/CheckBox;

    .line 243
    const-string v1, "change_account_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 245
    new-instance v2, Lcom/game/sdk/engin/UserInfoEngin;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 246
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/game/sdk/engin/UserInfoEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    iput-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userInfoEngin:Lcom/game/sdk/engin/UserInfoEngin;

    .line 247
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/engin/MainModuleEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/MainModuleEngin;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainModuleEngin:Lcom/game/sdk/engin/MainModuleEngin;

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    .line 253
    const-string v1, "viewpager"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 254
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout"

    .line 258
    const-string v4, "module_view_pager"

    .line 257
    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 256
    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    .line 260
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout"

    .line 262
    const-string v4, "module_view_pager"

    .line 261
    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 260
    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView1:Landroid/widget/GridView;

    .line 270
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v1, Lcom/game/sdk/adapter/ViewPagerAdapter;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->views:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/game/sdk/adapter/ViewPagerAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->vpAdapter:Lcom/game/sdk/adapter/ViewPagerAdapter;

    .line 275
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->vpAdapter:Lcom/game/sdk/adapter/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 276
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 279
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->chargeBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->platformCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->gameCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->userHeadIv:Lcom/game/sdk/view/CustomRoundImageView;

    invoke-virtual {v1, p0}, Lcom/game/sdk/view/CustomRoundImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->nickNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mobileLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    const-string v2, "is_auto_login"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 292
    .local v0, "isAutoLogin":Z
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginCk:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->autoLoginCk:Landroid/widget/CheckBox;

    new-instance v2, Lcom/game/sdk/ui/fragment/MainFragment$2;

    invoke-direct {v2, p0}, Lcom/game/sdk/ui/fragment/MainFragment$2;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 303
    return-void

    .line 246
    .end local v0    # "isAutoLogin":Z
    :cond_0
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 451
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "share_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 455
    new-instance v1, Lcom/game/sdk/view/ShareDialog;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-direct {v1, v2}, Lcom/game/sdk/view/ShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareDialog:Lcom/game/sdk/view/ShareDialog;

    .line 456
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->shareDialog:Lcom/game/sdk/view/ShareDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/ShareDialog;->show()V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "user_head_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 461
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 466
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "nick_name_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 467
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/UserInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 473
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "mobile_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 474
    sput v3, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    .line 475
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    goto :goto_0

    .line 479
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "charge_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 483
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-class v2, Lcom/game/sdk/ui/ChargeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 485
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 487
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1, v3, v3}, Lcom/game/sdk/ui/MainActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 499
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "platform_count_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 500
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->toGameBoxPersionInfo()V

    goto/16 :goto_0

    .line 503
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "game_count_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 504
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/MainFragment;->toGameBoxPersionInfo()V

    goto/16 :goto_0

    .line 507
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "change_account_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/MainFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 508
    const/4 v1, 0x2

    sput v1, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 510
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 511
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v1}, Lcom/game/sdk/FYGameSDK;->switchUser()V

    .line 512
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 688
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 689
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->moduleInfoList:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/game/sdk/domain/ModuleInfo;

    .line 690
    .local v2, "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_0

    .line 691
    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "SERVER_CALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 694
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "call_service"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    new-instance v6, Lcom/game/sdk/view/ServiceDialog;

    iget-object v7, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const v8, 0x3f19999a    # 0.6f

    invoke-direct {v6, v7, v8}, Lcom/game/sdk/view/ServiceDialog;-><init>(Landroid/app/Activity;F)V

    iput-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    .line 697
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/game/sdk/view/ServiceDialog;->setCanceledOnTouchOutside(Z)V

    .line 698
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->callDialog:Lcom/game/sdk/view/ServiceDialog;

    invoke-virtual {v6}, Lcom/game/sdk/view/ServiceDialog;->show()V

    .line 700
    :cond_0
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_1

    .line 701
    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "COMPAIGN_CENTER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 703
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "active_center"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 704
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 706
    :cond_1
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_2

    .line 707
    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "CHARGE_RECORD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 712
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 714
    :cond_2
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_3

    .line 715
    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "SCORE_STORE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 721
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 724
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "score_open_game_box"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 726
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, "pwd":Ljava/lang/String;
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 730
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gamebox://?act=GoodTypeActivity&pwd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 731
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 730
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 733
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u79ef\u5206\u5546\u57ceURI---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 734
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 735
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v6, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 741
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_4

    .line 742
    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "GAME_PACKAGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 754
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 757
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "package_open_game_box"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 759
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 761
    .restart local v3    # "pwd":Ljava/lang/String;
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 763
    .restart local v1    # "mobile":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"game_id\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->gameid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \"game_name\":\"\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "tempData":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gamebox://?act=GiftListActivity&pwd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 765
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 764
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 767
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6e38\u620f\u793c\u5305URI---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 769
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v6, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 776
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v4    # "tempData":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_3
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_5

    .line 777
    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "ACCOUNT_SAFETY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 778
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "account_safety"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 779
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 783
    :cond_5
    iget v6, v2, Lcom/game/sdk/domain/ModuleInfo;->type:I

    if-nez v6, :cond_6

    iget-object v6, v2, Lcom/game/sdk/domain/ModuleInfo;->typeVal:Ljava/lang/String;

    const-string v7, "GAME_CENTER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 784
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v6}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 787
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v7, "gamecenter_open_game_box"

    invoke-static {v6, v7}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 789
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 791
    .restart local v3    # "pwd":Ljava/lang/String;
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 793
    .restart local v1    # "mobile":Ljava/lang/String;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gamebox://?act=MainActivity&pwd="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 794
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v7, v7, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 793
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 796
    .restart local v5    # "uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6e38\u620f\u4e2d\u5fc3---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 797
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 798
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v6, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 804
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    .end local v3    # "pwd":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_6
    :goto_5
    return-void

    .line 728
    .restart local v2    # "moduleInfo":Lcom/game/sdk/domain/ModuleInfo;
    .restart local v3    # "pwd":Ljava/lang/String;
    :cond_7
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 737
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto/16 :goto_1

    .line 761
    .restart local v3    # "pwd":Ljava/lang/String;
    :cond_9
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto/16 :goto_2

    .line 772
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto/16 :goto_3

    .line 791
    .restart local v3    # "pwd":Ljava/lang/String;
    :cond_b
    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v6, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_4

    .line 800
    .end local v3    # "pwd":Ljava/lang/String;
    :cond_c
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto :goto_5
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 660
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 665
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/game/sdk/ui/fragment/MainFragment;->setCurDot(I)V

    .line 670
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 916
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 918
    const-string v0, "MainFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 337
    const-string v0, "MainFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 339
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;-><init>(Lcom/game/sdk/ui/fragment/MainFragment;Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/MainFragment$UserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    return-void
.end method

.method public toGameBoxPersionInfo()V
    .locals 6

    .prologue
    .line 522
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v4}, Lcom/game/sdk/utils/CheckUtil;->isInstallGameBox(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 524
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v5, "my_coin_open_game_box"

    invoke-static {v4, v5}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 526
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/security/Encrypt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/security/Base64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "pwd":Ljava/lang/String;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 530
    .local v1, "mobile":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gamebox://?act=MainActivity&tab=3&pwd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&phone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&username="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 532
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e38\u620f\u76d2\u5b50\u4e2a\u4eba\u4e2d\u5fc3---"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/game/sdk/ui/fragment/MainFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v4, v0}, Lcom/game/sdk/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 539
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "pwd":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 528
    .restart local v2    # "pwd":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v4, Lcom/game/sdk/domain/UserInfo;->mobile:Ljava/lang/String;

    goto :goto_0

    .line 536
    .end local v2    # "pwd":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/game/sdk/ui/fragment/MainFragment;->gameBoxDown(I)V

    goto :goto_1
.end method
