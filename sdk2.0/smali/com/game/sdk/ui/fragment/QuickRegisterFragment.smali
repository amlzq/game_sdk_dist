.class public Lcom/game/sdk/ui/fragment/QuickRegisterFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "QuickRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;
    }
.end annotation


# instance fields
.field private bgLayout:Landroid/widget/RelativeLayout;

.field private hasAccountTv:Landroid/widget/TextView;

.field loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field private passWordEt:Landroid/widget/EditText;

.field private quickPlayIv:Landroid/widget/ImageView;

.field private quickPlayLayout:Landroid/widget/LinearLayout;

.field private quickPlayTv:Landroid/widget/TextView;

.field private registerBtn:Landroid/widget/Button;

.field registerDialog:Lcom/game/sdk/view/CustomDialog;

.field private serverLayout:Landroid/widget/RelativeLayout;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;

.field private userNameEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "quick_register_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 96
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->initTheme()V

    .line 97
    return-void
.end method

.method public initTheme()V
    .locals 11

    .prologue
    .line 103
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 104
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLogo:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_0
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v8, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 108
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v8, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 109
    .local v5, "headColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v8, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 110
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v8, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 111
    .local v6, "noticeColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v8, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 113
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 114
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 115
    .local v0, "allBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 117
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 118
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 119
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 120
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 131
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 132
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 133
    .local v2, "btnBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 135
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 139
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serverLayout:Landroid/widget/RelativeLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 142
    :cond_3
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 143
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->hasAccountTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :cond_4
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->playBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    .line 147
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayIv:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->playBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_5
    return-void

    .line 122
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_6
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 123
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0

    .line 126
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 127
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 73
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 74
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u6ce8\u518c"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    .line 75
    const-string v0, "has_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->hasAccountTv:Landroid/widget/TextView;

    .line 76
    const-string v0, "quick_play_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayTv:Landroid/widget/TextView;

    .line 77
    const-string v0, "quick_play_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayLayout:Landroid/widget/LinearLayout;

    .line 78
    const-string v0, "user_name_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->userNameEt:Landroid/widget/EditText;

    .line 79
    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->passWordEt:Landroid/widget/EditText;

    .line 80
    const-string v0, "register_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerBtn:Landroid/widget/Button;

    .line 82
    const-string v0, "register_login_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLogo:Landroid/widget/ImageView;

    .line 83
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 84
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 85
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serverLayout:Landroid/widget/RelativeLayout;

    .line 86
    const-string v0, "quick_play_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayIv:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->hasAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "has_account_tv"

    invoke-virtual {p0, v4}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 154
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "quick_play_layout"

    invoke-virtual {p0, v4}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 160
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 161
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 163
    :cond_2
    const/4 v3, 0x1

    sput v3, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 164
    new-instance v3, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;

    invoke-direct {v3, p0, v8, v8}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;-><init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 167
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const-string v4, "register_btn"

    invoke-virtual {p0, v4}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 169
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v3}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v4, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->passWordEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "password":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v4, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v4, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_6
    const-string v3, "[\u4e00-\u9fa5]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 187
    .local v1, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 188
    :cond_7
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v4, "\u8d26\u53f7\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_9

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 192
    :cond_9
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v4, "\u5bc6\u7801\u53ea\u80fd\u75316\u81f316\u4f4d16\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v3, v4}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_a
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_b

    .line 197
    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v3}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 200
    :cond_b
    sput v5, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 201
    new-instance v3, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;

    invoke-direct {v3, p0, v2, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;-><init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
