.class public Lcom/game/sdk/ui/fragment/BindPhoneFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "BindPhoneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/BindPhoneFragment$BindPhoneTask;,
        Lcom/game/sdk/ui/fragment/BindPhoneFragment$ValidateCodeTask;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private bindDialog:Lcom/game/sdk/view/CustomDialog;

.field private getValidateBtn:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private phoneNumberEt:Landroid/widget/EditText;

.field private secondes:I

.field private sendDialog:Lcom/game/sdk/view/CustomDialog;

.field private submitBtn:Landroid/widget/Button;

.field private titleTv:Landroid/widget/TextView;

.field private userNameTv:Landroid/widget/TextView;

.field private validateCodeEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 54
    new-instance v0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment$1;-><init>(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->handler:Landroid/os/Handler;

    .line 263
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->secondes:I

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->codeRefresh()V

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->bindDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->secondes:I

    return v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/fragment/BindPhoneFragment;I)V
    .locals 0

    .prologue
    .line 263
    iput p1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->secondes:I

    return-void
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private codeRefresh()V
    .locals 4

    .prologue
    .line 269
    const/16 v1, 0x3c

    iput v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->secondes:I

    .line 270
    new-instance v0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;-><init>(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)V

    .line 291
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "fysdk_bind_phone_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->userNameTv:Landroid/widget/TextView;

    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
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
    .line 73
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 74
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 75
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6b63\u5728\u53d1\u9001"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    .line 76
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v2, "\u6b63\u5728\u7ed1\u5b9a"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->bindDialog:Lcom/game/sdk/view/CustomDialog;

    .line 77
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->backIv:Landroid/widget/ImageView;

    .line 78
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->titleTv:Landroid/widget/TextView;

    .line 79
    const-string v0, "user_name_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->userNameTv:Landroid/widget/TextView;

    .line 80
    const-string v0, "phone_number_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->phoneNumberEt:Landroid/widget/EditText;

    .line 81
    const-string v0, "validate_code_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    .line 83
    const-string v0, "get_validate_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;

    .line 84
    const-string v0, "submit_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->submitBtn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "account_safety_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->submitBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "back_iv"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 114
    sget v2, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    if-nez v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-virtual {v2, v5}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 117
    :cond_0
    sget v2, Lcom/game/sdk/domain/GoagalInfo;->bindMobileFrom:I

    if-ne v2, v5, :cond_1

    .line 118
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "get_validate_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 123
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 129
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 130
    new-instance v2, Lcom/game/sdk/ui/fragment/BindPhoneFragment$ValidateCodeTask;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment$ValidateCodeTask;-><init>(Lcom/game/sdk/ui/fragment/BindPhoneFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/fragment/BindPhoneFragment$ValidateCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "submit_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 134
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v2}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_5
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 140
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->validateCodeEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "validateCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 147
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const-string v3, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_7
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->bindDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 152
    new-instance v2, Lcom/game/sdk/ui/fragment/BindPhoneFragment$BindPhoneTask;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment$BindPhoneTask;-><init>(Lcom/game/sdk/ui/fragment/BindPhoneFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/fragment/BindPhoneFragment$BindPhoneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 298
    const-string v0, "BindPhoneFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 108
    const-string v0, "BindPhoneFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 109
    return-void
.end method
