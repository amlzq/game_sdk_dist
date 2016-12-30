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

.field private oldLineView:Landroid/view/View;

.field private oldPassWordEt:Landroid/widget/EditText;

.field private oldPassWordLayout:Landroid/widget/LinearLayout;

.field private submitBtn:Landroid/widget/Button;

.field private titleTv:Landroid/widget/TextView;

.field updateDialog:Lcom/game/sdk/view/CustomDialog;

.field private updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$1;-><init>(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->handler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Lcom/game/sdk/engin/UpdatePassWordEngin;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;

    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Lcom/game/sdk/engin/UpdatePassWordEngin;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updatePassWordEngin:Lcom/game/sdk/engin/UpdatePassWordEngin;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "update_password_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 91
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 72
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 73
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6b63\u5728\u4fee\u6539\u5bc6\u7801"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 74
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->backIv:Landroid/widget/ImageView;

    .line 75
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->titleTv:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "account_safety_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const-string v0, "old_ps_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldPassWordLayout:Landroid/widget/LinearLayout;

    .line 78
    const-string v0, "old_line"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldLineView:Landroid/view/View;

    .line 79
    const-string v0, "old_ps_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldPassWordEt:Landroid/widget/EditText;

    .line 80
    const-string v0, "new_ps_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPassWordEt:Landroid/widget/EditText;

    .line 81
    const-string v0, "confirm_ps_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->confirmPassWordEt:Landroid/widget/EditText;

    .line 82
    const-string v0, "submit_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->submitBtn:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "back_iv"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 102
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "submit_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 106
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldPassWordEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "oldPs":Ljava/lang/String;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPassWordEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->confirmPassWordEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "confirmPs":Ljava/lang/String;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-nez v2, :cond_3

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u539f\u59cb\u5bc6\u7801"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    .end local v0    # "confirmPs":Ljava/lang/String;
    .end local v1    # "oldPs":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 115
    .restart local v0    # "confirmPs":Ljava/lang/String;
    .restart local v1    # "oldPs":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldPassWordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldLineView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldPassWordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->oldLineView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    const-string v1, ""

    goto :goto_1

    .line 128
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u518d\u6b21\u8f93\u5165\u5bc6\u7801"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 134
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u4e8c\u6b21\u5bc6\u7801\u8f93\u5165\u4e0d\u4e00\u81f4"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_6
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 138
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 139
    new-instance v2, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->newPs:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;-><init>(Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment$UpdatePassWordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 141
    :cond_7
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/UpdatePassWordFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u83b7\u53d6\u7528\u6237\u767b\u5f55\u4fe1\u606f\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
