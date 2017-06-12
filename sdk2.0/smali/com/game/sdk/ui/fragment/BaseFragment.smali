.class public abstract Lcom/game/sdk/ui/fragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public findButtonByString(Ljava/lang/String;)Landroid/widget/Button;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/BaseFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/BaseFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public findIdByString(Ljava/lang/String;)I
    .locals 2
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/BaseFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public findStringByResId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "string"

    invoke-static {v1, v2, p1}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/BaseFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public findViewByString(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "idString"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BaseFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/game/sdk/ui/fragment/BaseFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutId()Ljava/lang/String;
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public initVars()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public initViews()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BaseFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout"

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->getLayoutId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BaseFragment;->mView:Landroid/view/View;

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initVars()V

    .line 26
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 27
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 28
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BaseFragment;->mView:Landroid/view/View;

    return-object v0
.end method
