.class public Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "UserInfoPhoneUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;,
        Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;
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

.field private phoneNumberEt:Landroid/widget/EditText;

.field private secondes:I

.field private sendDialog:Lcom/game/sdk/view/CustomDialog;

.field private titleTv:Landroid/widget/TextView;

.field private updateBtn:Landroid/widget/Button;

.field private validateCodeEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$1;-><init>(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)V

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->handler:Landroid/os/Handler;

    .line 255
    const/16 v0, 0x3c

    iput v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->secondes:I

    .line 31
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->codeRefresh()V

    return-void
.end method

.method static synthetic access$4(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->validateCodeEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Lcom/game/sdk/view/CustomDialog;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->bindDialog:Lcom/game/sdk/view/CustomDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->secondes:I

    return v0
.end method

.method static synthetic access$7(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;I)V
    .locals 0

    .prologue
    .line 255
    iput p1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->secondes:I

    return-void
.end method

.method static synthetic access$8(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->getValidateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$9(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private codeRefresh()V
    .locals 4

    .prologue
    .line 261
    const/16 v1, 0x3c

    iput v1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->secondes:I

    .line 262
    new-instance v0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$2;-><init>(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;)V

    .line 283
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "activity_update_phone"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 99
    return-void
.end method

.method public initVars()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 70
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->titleTv:Landroid/widget/TextView;

    .line 71
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->backIv:Landroid/widget/ImageView;

    .line 73
    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v0, v0, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "again_bind_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    const-string v0, "phone_number_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->phoneNumberEt:Landroid/widget/EditText;

    .line 80
    const-string v0, "validate_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->validateCodeEt:Landroid/widget/EditText;

    .line 81
    const-string v0, "get_validate_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->getValidateBtn:Landroid/widget/Button;

    .line 82
    const-string v0, "update_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->updateBtn:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->getValidateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->updateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->titleTv:Landroid/widget/TextView;

    const-string v1, "bind_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 92
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u53d1\u9001"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    .line 93
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->bindDialog:Lcom/game/sdk/view/CustomDialog;

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "back_iv"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->finish()V

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "get_validate_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 108
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 114
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->sendDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 115
    new-instance v2, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;-><init>(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$ValidateCodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v3, "update_btn"

    invoke-virtual {p0, v3}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->findIdByString(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 119
    invoke-static {p0}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 120
    const-string v2, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->phoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->validateCodeEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "validateCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    const-string v2, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    const-string v2, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {p0, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_6
    iget-object v2, p0, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;->bindDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 137
    new-instance v2, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;

    sget-object v3, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v3, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;-><init>(Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/UserInfoPhoneUpdateActivity$BindPhoneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
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
