.class public Lcom/game/sdk/ui/fragment/QuickRegisterFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "QuickRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;,
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

.field private serverLayout:Landroid/widget/LinearLayout;

.field private serviceQQTv:Landroid/widget/TextView;

.field private serviceTelTv:Landroid/widget/TextView;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;

.field private userNameEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "quick_register_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 116
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 117
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->initTheme()V

    .line 119
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_3

    .line 121
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;-><init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;)V

    .line 135
    .local v0, "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 137
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 140
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 142
    .restart local v1    # "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 148
    .end local v0    # "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/QuickRegisterFragment$NoUnderlineSpan;
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_1
    :goto_1
    return-void

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<a href=\'tel://400-796-6071\' style=\'text-decoration:none;\'>400-796-6071</a>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceQQTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670dQQ\uff1a3453725652"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public initTheme()V
    .locals 11

    .prologue
    .line 161
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 162
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLogo:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    :cond_0
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v8, :cond_5

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v8, :cond_5

    .line 166
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v8, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 167
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v8, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 168
    .local v5, "headColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v8, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 169
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v8, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 170
    .local v6, "noticeColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v8, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 172
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 173
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 174
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

    .line 176
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 177
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 178
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 179
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 190
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 191
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 192
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

    .line 194
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

    .line 197
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 198
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serverLayout:Landroid/widget/LinearLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 201
    :cond_3
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 202
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

    .line 205
    :cond_4
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->playBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    .line 206
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayIv:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->playBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    .end local v1    # "bgColor":Ljava/lang/String;
    .end local v3    # "btnColor":Ljava/lang/String;
    .end local v4    # "changeFontColor":Ljava/lang/String;
    .end local v5    # "headColor":Ljava/lang/String;
    .end local v6    # "noticeColor":Ljava/lang/String;
    :cond_5
    return-void

    .line 181
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v1    # "bgColor":Ljava/lang/String;
    .restart local v3    # "btnColor":Ljava/lang/String;
    .restart local v4    # "changeFontColor":Ljava/lang/String;
    .restart local v5    # "headColor":Ljava/lang/String;
    .restart local v6    # "noticeColor":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 182
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

    .line 185
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 186
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
    .line 88
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 89
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 90
    new-instance v0, Lcom/game/sdk/view/CustomDialog;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v2, "\u6b63\u5728\u6ce8\u518c"

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    .line 91
    const-string v0, "has_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->hasAccountTv:Landroid/widget/TextView;

    .line 92
    const-string v0, "quick_play_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayTv:Landroid/widget/TextView;

    .line 93
    const-string v0, "quick_play_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayLayout:Landroid/widget/LinearLayout;

    .line 94
    const-string v0, "user_name_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->userNameEt:Landroid/widget/EditText;

    .line 95
    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findEditTextByString(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->passWordEt:Landroid/widget/EditText;

    .line 96
    const-string v0, "register_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerBtn:Landroid/widget/Button;

    .line 98
    const-string v0, "register_login_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLogo:Landroid/widget/ImageView;

    .line 99
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 100
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 101
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serverLayout:Landroid/widget/LinearLayout;

    .line 102
    const-string v0, "quick_play_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayIv:Landroid/widget/ImageView;

    .line 104
    const-string v0, "service_tel_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 105
    const-string v0, "service_qq_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceQQTv:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->hasAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->quickPlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const-string v6, "has_account_tv"

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 215
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const-string v6, "service_qq_tv"

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 220
    sput v8, Lcom/game/sdk/domain/GoagalInfo;->qqKefuFrom:I

    .line 221
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const-string v6, "quick_play_layout"

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 227
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    .line 228
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 230
    :cond_3
    sput v8, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 231
    new-instance v5, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;

    invoke-direct {v5, p0, v11, v11}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;-><init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    const-string v6, "register_btn"

    invoke-virtual {p0, v6}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->findIdByString(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_d

    .line 236
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v5}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 237
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_5
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->userNameEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "username":Ljava/lang/String;
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->passWordEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "password":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 245
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 252
    :cond_7
    const-string v5, "[\u4e00-\u9fa5]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 254
    .local v3, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v10, :cond_8

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    :cond_8
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "\u8d26\u53f7\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v10, :cond_a

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 259
    :cond_a
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v6, "\u5bc6\u7801\u53ea\u80fd\u75316\u81f316\u4f4d\u82f1\u6587\u6216\u6570\u5b57\u7ec4\u6210"

    invoke-static {v5, v6}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_b
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_c

    .line 264
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->registerDialog:Lcom/game/sdk/view/CustomDialog;

    invoke-virtual {v5}, Lcom/game/sdk/view/CustomDialog;->showDialog()V

    .line 267
    :cond_c
    sput v7, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 268
    new-instance v5, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;

    invoke-direct {v5, p0, v4, v2}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;-><init>(Lcom/game/sdk/ui/fragment/QuickRegisterFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/game/sdk/ui/fragment/QuickRegisterFragment$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "pat":Ljava/util/regex/Pattern;
    .end local v4    # "username":Ljava/lang/String;
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v7, "id"

    const-string v8, "service_tel_tv"

    invoke-static {v6, v7, v8}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isEmulator--->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v5}, Lcom/game/sdk/utils/SystemUtil;->isValidContext(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v5, v5, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "tel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v6, v6, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 277
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    iget-object v5, p0, Lcom/game/sdk/ui/fragment/QuickRegisterFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v5, v1}, Lcom/game/sdk/ui/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 347
    const-string v0, "QuickRegisterFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 154
    const-string v0, "QuickRegisterFragment"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 155
    return-void
.end method
