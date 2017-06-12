.class public Lcom/game/sdk/ui/fragment/CompAignFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "CompAignFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/game/sdk/adapter/CompAignAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private compAignEngin:Lcom/game/sdk/engin/CompAignEngin;

.field private compAignGridView:Landroid/widget/GridView;

.field compAignInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CompAign;",
            ">;"
        }
    .end annotation
.end field

.field compAignPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/CompAign;",
            ">;"
        }
    .end annotation
.end field

.field private currentPage:I

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private lastItem:I

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private noDataLayout:Landroid/widget/LinearLayout;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->currentPage:I

    .line 58
    new-instance v0, Lcom/game/sdk/ui/fragment/CompAignFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/CompAignFragment$1;-><init>(Lcom/game/sdk/ui/fragment/CompAignFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->handler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/adapter/CompAignAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->adapter:Lcom/game/sdk/adapter/CompAignAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/CompAignFragment;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/CompAignFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->noDataLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/engin/CompAignEngin;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignEngin:Lcom/game/sdk/engin/CompAignEngin;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/CompAignFragment;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/CompAignFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/CompAignFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "compaign_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    .line 102
    new-instance v0, Lcom/game/sdk/adapter/CompAignAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignInfoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/CompAignAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->adapter:Lcom/game/sdk/adapter/CompAignAdapter;

    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->adapter:Lcom/game/sdk/adapter/CompAignAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/game/sdk/ui/fragment/CompAignFragment$2;

    invoke-direct {v1, p0}, Lcom/game/sdk/ui/fragment/CompAignFragment$2;-><init>(Lcom/game/sdk/ui/fragment/CompAignFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    new-instance v0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;-><init>(Lcom/game/sdk/ui/fragment/CompAignFragment;Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 85
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 86
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->backIv:Landroid/widget/ImageView;

    .line 87
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->titleTv:Landroid/widget/TextView;

    .line 88
    const-string v0, "no_data_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->noDataLayout:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "compaign_center_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v0, "compaign_grid_view"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignGridView:Landroid/widget/GridView;

    .line 91
    new-instance v0, Lcom/game/sdk/engin/CompAignEngin;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/engin/CompAignEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignEngin:Lcom/game/sdk/engin/CompAignEngin;

    .line 92
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->compAignGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 178
    const-string v0, "CompAignFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 129
    const-string v0, "CompAignFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 201
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->lastItem:I

    .line 202
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 184
    if-nez p2, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->adapter:Lcom/game/sdk/adapter/CompAignAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/adapter/CompAignAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 191
    iget v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/CompAignFragment;->currentPage:I

    .line 193
    new-instance v0, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;-><init>(Lcom/game/sdk/ui/fragment/CompAignFragment;Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/CompAignFragment$CompAignTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    :cond_0
    return-void
.end method
