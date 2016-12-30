.class public Lcom/game/sdk/ui/fragment/QuickPlayFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "QuickPlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bgLayout:Landroid/widget/RelativeLayout;

.field private changeAccountTv:Landroid/widget/TextView;

.field private intoGameBtn:Landroid/widget/Button;

.field intoGameDialog:Lcom/game/sdk/view/CustomDialog;

.field loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field private playAccountTv:Landroid/widget/TextView;

.field private quickRegisterLayout:Landroid/widget/LinearLayout;

.field private quickRegisterTv:Landroid/widget/TextView;

.field private registerIv:Landroid/widget/ImageView;

.field private serverLayout:Landroid/widget/RelativeLayout;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "quick_play_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 84
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->initTheme()V

    .line 85
    return-void
.end method

.method public initTheme()V
    .locals 11

    .prologue
    .line 91
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 92
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLogo:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_0
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v8, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 96
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v8, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 97
    .local v5, "headColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v8, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 98
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v8, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 99
    .local v6, "noticeColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v8, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 101
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 102
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 103
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

    .line 105
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 106
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 107
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 108
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 120
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 121
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

    .line 123
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterTv:Landroid/widget/TextView;

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

    .line 126
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 127
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serverLayout:Landroid/widget/RelativeLayout;

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

    .line 130
    :cond_3
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 131
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->changeAccountTv:Landroid/widget/TextView;

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

    .line 132
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v8}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 133
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->playAccountTv:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u8d26\u53f7\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v10, v10, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->playAccountTv:Landroid/widget/TextView;

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

    .line 138
    :cond_4
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    .line 139
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->registerIv:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_5
    return-void

    .line 110
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_6
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 111
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

    .line 114
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 115
    .restart local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_0
.end method

.method public initViews()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 58
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 59
    const-string v0, "change_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 60
    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterTv:Landroid/widget/TextView;

    .line 61
    const-string v0, "play_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->playAccountTv:Landroid/widget/TextView;

    .line 62
    const-string v0, "into_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->intoGameBtn:Landroid/widget/Button;

    .line 64
    const-string v0, "quick_register_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    .line 66
    const-string v0, "quick_play_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLogo:Landroid/widget/ImageView;

    .line 67
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 68
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 69
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serverLayout:Landroid/widget/RelativeLayout;

    .line 70
    const-string v0, "register_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->registerIv:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x3

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "change_account_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "quick_register_layout"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v0, v2}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "quick_register_tv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v0, v2}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "into_game_btn"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/game/sdk/ui/LoginActivity;->finish()V

    goto :goto_0
.end method
