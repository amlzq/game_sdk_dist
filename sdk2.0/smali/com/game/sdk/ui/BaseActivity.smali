.class public abstract Lcom/game/sdk/ui/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field public fyGmaeSDk:Lcom/game/sdk/FYGameSDK;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findButtonByString(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public findIdByString(Ljava/lang/String;)I
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public findStringByResId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-static {p0, v1, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public findViewByString(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/BaseActivity;->findIdByString(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutId()Ljava/lang/String;
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string v0, "layout"

    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->getLayoutId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/BaseActivity;->setContentView(I)V

    .line 22
    invoke-static {}, Lcom/game/sdk/FYGameSDK;->defaultSDK()Lcom/game/sdk/FYGameSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/BaseActivity;->fyGmaeSDk:Lcom/game/sdk/FYGameSDK;

    .line 23
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 24
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 25
    invoke-virtual {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 26
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
