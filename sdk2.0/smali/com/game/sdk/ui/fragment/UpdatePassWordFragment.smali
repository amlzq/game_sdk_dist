.class public Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "UpdatePassWordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private confirmPassWordEt:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private newPassWordEt:Landroid/widget/EditText;

.field private newPs:Ljava/lang/String;

.field private submitBtn:Landroid/widget/Button;

.field private titleTv:Landroid/widget/TextView;

.field updateDialog:Lcom/game/sdk/view/CustomDialog;

.field private updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;

.field private userNameTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$1;-><init>(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Lcom/game/sdk/engin/UpdatePassWordEngin;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/engin/UpdatePassWordEngin;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "update_password_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 89
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 66
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 67
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6b63\u5728\u4fee\u6539\u5bc6\u7801"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 68
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->backIv:Landroid/widget/ImageView;

    .line 69
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->titleTv:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "account_safety_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const-string v0, "user_name_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->userNameTv:Landroid/widget/TextView;

    .line 73
    const-string v0, "new_ps_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPassWordEt:Landroid/widget/EditText;

    .line 74
    const-string v0, "confirm_ps_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->confirmPassWordEt:Landroid/widget/EditText;

    .line 75
    const-string v0, "submit_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->submitBtn:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v0}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->userNameTv:Landroid/widget/TextView;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "submit_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 111
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPassWordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->confirmPassWordEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "confirmPs":Ljava/lang/String;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .end local v0    # "confirmPs":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 119
    .restart local v0    # "confirmPs":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u8bf7\u518d\u6b21\u8f93\u5165\u5bc6\u7801"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u4e8c\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 130
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 131
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 134
    :cond_5
    new-instance v1, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;-><init>(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u83b7\u53d6\u7528\u6237\u767b\u5f55\u4fe1\u606f\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 187
    const-string v0, "UpdatePassWordFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 95
    const-string v0, "UpdatePassWordFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 96
    return-void
.end method
