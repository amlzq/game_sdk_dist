.class public Lcom/game/sdk/ui/fragment/CompAignDetailFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "CompAignDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;
    }
.end annotation


# instance fields
.field private activityId:Ljava/lang/String;

.field private backIv:Landroid/widget/ImageView;

.field private bodyTv:Landroid/widget/TextView;

.field private compAignDetail:Lcom/game/sdk/domain/CompAignDetail;

.field private compAignDetailEngin:Lcom/game/sdk/engin/CompAignDetailEngin;

.field private compAignEndDateTv:Landroid/widget/TextView;

.field private compAignIv:Landroid/widget/ImageView;

.field private compAignStartDateTv:Landroid/widget/TextView;

.field private compAignTitleTv:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private titleTv:Landroid/widget/TextView;

.field private type:I

.field private typeSdkView:Landroid/widget/ScrollView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$1;-><init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->handler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/domain/CompAignDetail;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->type:I

    return v0
.end method

.method static synthetic access$10(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;Lcom/game/sdk/domain/CompAignDetail;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetail:Lcom/game/sdk/domain/CompAignDetail;

    return-void
.end method

.method static synthetic access$11(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignTitleTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->bodyTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignStartDateTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignEndDateTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;)Lcom/game/sdk/engin/CompAignDetailEngin;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetailEngin:Lcom/game/sdk/engin/CompAignDetailEngin;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "compaign_detail"

    return-object v0
.end method

.method public initData()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 129
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 131
    iget v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->type:I

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->typeSdkView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 135
    :cond_0
    iget v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->typeSdkView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 139
    :cond_1
    new-instance v0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;-><init>(Lcom/game/sdk/ui/fragment/CompAignDetailFragment;Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment$CompAignDetailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public initViews()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 103
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/game/sdk/ui/MainActivity;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 104
    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->backIv:Landroid/widget/ImageView;

    .line 106
    const-string v1, "type_sdk_view"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->typeSdkView:Landroid/widget/ScrollView;

    .line 107
    const-string v1, "title_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->titleTv:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->titleTv:Landroid/widget/TextView;

    const-string v2, "compaign_center_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const-string v1, "compaign_title_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignTitleTv:Landroid/widget/TextView;

    .line 111
    const-string v1, "compaign_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignIv:Landroid/widget/ImageView;

    .line 112
    const-string v1, "body_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->bodyTv:Landroid/widget/TextView;

    .line 113
    const-string v1, "start_date_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignStartDateTv:Landroid/widget/TextView;

    .line 114
    const-string v1, "end_date_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignEndDateTv:Landroid/widget/TextView;

    .line 115
    const-string v1, "web_view"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->webView:Landroid/webkit/WebView;

    .line 117
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 119
    const-string v1, "aid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->activityId:Ljava/lang/String;

    .line 120
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->type:I

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v1, Lcom/game/sdk/engin/CompAignDetailEngin;

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->activityId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/game/sdk/engin/CompAignDetailEngin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->compAignDetailEngin:Lcom/game/sdk/engin/CompAignDetailEngin;

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 160
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 153
    return-void
.end method
