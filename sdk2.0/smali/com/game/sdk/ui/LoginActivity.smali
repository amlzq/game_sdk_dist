.class public Lcom/game/sdk/ui/LoginActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field private currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

.field private fm:Landroid/support/v4/app/FragmentManager;

.field private transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFragment(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "login_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    return-void

    .line 73
    :pswitch_0
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 76
    :pswitch_1
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 79
    :pswitch_2
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 82
    :pswitch_3
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public defaultFragment()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 53
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 55
    sget v0, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "login_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 62
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 63
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/PhoneLoginFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "activity_login"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 49
    return-void
.end method

.method public initVars()V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 34
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 36
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x1a4

    invoke-static {p0, v2}, Lcom/game/sdk/utils/DimensionUtil;->dip2px(Landroid/content/Context;I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 38
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 43
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->defaultFragment()V

    .line 44
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
