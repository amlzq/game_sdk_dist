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
    .line 23
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public changeFragment(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "login_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 132
    return-void

    .line 109
    :pswitch_0
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 112
    :pswitch_1
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 115
    :pswitch_2
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 118
    :pswitch_3
    new-instance v0, Lcom/game/sdk/ui/fragment/QQServiceFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/QQServiceFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 121
    :pswitch_4
    new-instance v0, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/ValidatePhoneFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 124
    :pswitch_5
    new-instance v0, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/SetNewPassWordFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public defaultFragment()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->fm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 87
    const/4 v0, 0x0

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 91
    new-instance v0, Lcom/game/sdk/ui/fragment/AccountLoginFragment;

    invoke-direct {v0}, Lcom/game/sdk/ui/fragment/AccountLoginFragment;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    .line 94
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const-string v1, "id"

    const-string v2, "login_content"

    invoke-static {p0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/LoginActivity;->currentFragment:Lcom/game/sdk/ui/fragment/BaseFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/LoginActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 96
    return-void
.end method

.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "fysdk_activity_login"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 53
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 39
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->setOrientation()V

    .line 40
    return-void
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 46
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->defaultFragment()V

    .line 47
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->setOrientation()V

    .line 67
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
    .line 143
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onDestroy()V

    .line 144
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onPause()V

    .line 138
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->onResume()V

    .line 59
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/LoginActivity;->setFinishOnTouchOutside(Z)V

    .line 61
    return-void
.end method

.method public setOrientation()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 70
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-nez v2, :cond_0

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/LoginActivity;->setRequestedOrientation(I)V

    .line 73
    :cond_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v2, v2, Lcom/game/sdk/domain/InItInfo;->vertical:I

    if-ne v2, v3, :cond_1

    .line 74
    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/LoginActivity;->setRequestedOrientation(I)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/ui/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 78
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 80
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-static {p0}, Lcom/game/sdk/utils/DimensionUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 81
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 82
    return-void
.end method
