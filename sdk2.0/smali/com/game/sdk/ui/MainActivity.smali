.class public Lcom/game/sdk/ui/MainActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "MainActivity.java"


# instance fields
.field private currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFragment(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "main_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 102
    return-void

    .line 73
    :pswitch_0
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/MainFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v0, Lcom/game/sdk/ui/fragment/CompAignFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/CompAignFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 82
    :pswitch_3
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 85
    :pswitch_4
    new-instance v0, Lcom/game/sdk/ui/fragment/GameCoinListFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/GameCoinListFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 88
    :pswitch_5
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/AccountSafetyFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 91
    :pswitch_6
    new-instance v0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 94
    :pswitch_7
    new-instance v0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public defaultFragment()V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 60
    new-instance v0, Lcom/game/sdk/ui/fragment/MainFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/MainFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 61
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "main_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 62
    iget-object v0, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    return-void
.end method

.method public detailFragment(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "actionType"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    new-instance v1, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;

    invoke-direct {v1}, Lcom/game/sdk/ui/fragment/CompAignDetailFragment;-><init>()V

    iput-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 115
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/game/sdk/ui/fragment/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v2, "id"

    const-string v3, "main_content"

    invoke-static {p0, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/ui/MainActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 117
    iget-object v1, p0, Lcom/game/sdk/ui/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 118
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "activity_main"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 55
    return-void
.end method

.method public initVars()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 39
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 41
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x1fe

    invoke-static {p0, v2}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 43
    return-void
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 48
    invoke-virtual {p0}, Lcom/game/sdk/ui/MainActivity;->defaultFragment()V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/MainActivity;->setFinishOnTouchOutside(Z)V

    .line 50
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
