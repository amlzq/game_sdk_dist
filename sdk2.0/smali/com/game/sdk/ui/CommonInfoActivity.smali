.class public Lcom/game/sdk/ui/CommonInfoActivity;
.super Lcom/game/sdk/ui/BaseActivity;
.source "CommonInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;
    }
.end annotation


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private boyLayout:Landroid/widget/RelativeLayout;

.field private boySelectedIcon:Landroid/widget/ImageView;

.field private commonLayout:Landroid/widget/LinearLayout;

.field private girlLayout:Landroid/widget/RelativeLayout;

.field private girlSelectedIcon:Landroid/widget/ImageView;

.field private infoType:Ljava/lang/String;

.field private sex:I

.field private sexLayout:Landroid/widget/LinearLayout;

.field private titleTv:Landroid/widget/TextView;

.field private updateBtn:Landroid/widget/Button;

.field updateDialog:Lcom/game/sdk/view/CustomDialog;

.field private updateInfoEt:Landroid/widget/EditText;

.field private updateTypeText:Ljava/lang/String;

.field private updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/game/sdk/ui/BaseActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 22
    return-void
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/CommonInfoActivity;Lcom/game/sdk/engin/UpdateUserInfoEngin;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/CommonInfoActivity;)Lcom/game/sdk/engin/UpdateUserInfoEngin;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateUserInfoEngin:Lcom/game/sdk/engin/UpdateUserInfoEngin;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "activity_common_info"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initData()V

    .line 121
    return-void
.end method

.method public initVars()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 61
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initVars()V

    .line 63
    const-string v2, "title_tv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->titleTv:Landroid/widget/TextView;

    .line 64
    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->backIv:Landroid/widget/ImageView;

    .line 66
    const-string v2, "common_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    .line 67
    const-string v2, "sex_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    .line 69
    const-string v2, "update_info_et"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    .line 70
    const-string v2, "update_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateBtn:Landroid/widget/Button;

    .line 72
    const-string v2, "boy_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boyLayout:Landroid/widget/RelativeLayout;

    .line 73
    const-string v2, "girl_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlLayout:Landroid/widget/RelativeLayout;

    .line 75
    const-string v2, "boy_selected_icon"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    .line 76
    const-string v2, "girl_selected_icon"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    .line 78
    invoke-virtual {p0}, Lcom/game/sdk/ui/CommonInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 81
    const-string v2, "infoType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "nickname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v2, "nick_name_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "email_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "qq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    const-string v2, "qq_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v3, "sex"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 100
    const-string v2, "sex_update_text"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->titleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateTypeText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boyLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/game/sdk/ui/BaseActivity;->initViews()V

    .line 115
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    const-string v1, "\u6b63\u5728\u4fee\u6539"

    invoke-direct {v0, p0, v1}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    .line 116
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "back_iv"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/game/sdk/ui/CommonInfoActivity;->finish()V

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "boy_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 130
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    const/4 v1, 0x1

    iput v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "girl_layout"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 136
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->boySelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->girlSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    const/4 v1, 0x2

    iput v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "update_btn"

    invoke-virtual {p0, v2}, Lcom/game/sdk/ui/CommonInfoActivity;->findIdByString(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 143
    new-instance v0, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v0}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 145
    .local v0, "uinfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->commonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 146
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    const-string v1, "update_info_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/CommonInfoActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    .end local v0    # "uinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_3
    :goto_0
    return-void

    .line 151
    .restart local v0    # "uinfo":Lcom/game/sdk/domain/UserInfo;
    :cond_4
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 152
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->nickName:Ljava/lang/String;

    .line 154
    :cond_5
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->email:Ljava/lang/String;

    .line 157
    :cond_6
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    .line 162
    :cond_7
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    .line 163
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->infoType:Ljava/lang/String;

    const-string v2, "sex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 164
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateInfoEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/game/sdk/domain/UserInfo;->qq:Ljava/lang/String;

    .line 166
    :cond_8
    iget v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->sex:I

    iput v1, v0, Lcom/game/sdk/domain/UserInfo;->sex:I

    .line 170
    :cond_9
    iget-object v1, p0, Lcom/game/sdk/ui/CommonInfoActivity;->updateDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v1}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 172
    new-instance v1, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;

    invoke-direct {v1, p0, v0}, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;-><init>(Lcom/game/sdk/ui/CommonInfoActivity;Lcom/game/sdk/domain/UserInfo;)V

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/game/sdk/ui/CommonInfoActivity$UpdateInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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
