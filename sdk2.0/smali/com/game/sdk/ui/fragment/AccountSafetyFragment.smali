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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment$1;-><init>(Lcom/game/sdk/ui/fragment/AccountSafetyFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->handler:Landroid/os/Handler;

    .line 22
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "account_safety_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 74
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 58
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 59
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->backIv:Landroid/widget/ImageView;

    .line 60
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->titleTv:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "account_safety_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const-string v0, "update_ps_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->updatePassWordLayout:Landroid/widget/RelativeLayout;

    .line 63
    const-string v0, "bind_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->bindLayout:Landroid/widget/RelativeLayout;

    .line 64
    const-string v0, "is_bind_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->isBindTv:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->updatePassWordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->bindLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "update_ps_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "bind_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 103
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 79
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->isBindTv:Landroid/widget/TextView;

    const-string v1, "is_bind_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->isBindTv:Landroid/widget/TextView;

    const-string v1, "un_bind_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
