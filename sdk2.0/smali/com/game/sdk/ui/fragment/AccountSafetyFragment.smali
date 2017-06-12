.class public Lcom/game/sdk/ui/fragment/AccountSafetyFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "AccountSafetyFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private bindLayout:Landroid/widget/RelativeLayout;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isBindTv:Landroid/widget/TextView;

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private titleTv:Landroid/widget/TextView;

.field private updatePassWordLayout:Landroid/widget/RelativeLayout;

.field private versionCodeTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment$1;-><init>(Lcom/game/sdk/ui/fragment/AccountSafetyFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "fysdk_account_safety_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 78
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->versionCodeTv:Landroid/widget/TextView;

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void

    .line 78
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 61
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 62
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->backIv:Landroid/widget/ImageView;

    .line 63
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->titleTv:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "account_safety_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const-string v0, "update_ps_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->updatePassWordLayout:Landroid/widget/RelativeLayout;

    .line 66
    const-string v0, "bind_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->bindLayout:Landroid/widget/RelativeLayout;

    .line 67
    const-string v0, "is_bind_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->isBindTv:Landroid/widget/TextView;

    .line 68
    const-string v0, "version_code_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->versionCodeTv:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->updatePassWordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->bindLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v0, v2}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "update_ps_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "bind_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 109
    sput v2, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    .line 110
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 112
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 118
    const-string v0, "AccountSafetyFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 85
    const-string v0, "AccountSafetyFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->isBindTv:Landroid/widget/TextView;

    const-string v1, "is_bind_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->isBindTv:Landroid/widget/TextView;

    const-string v1, "un_bind_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
