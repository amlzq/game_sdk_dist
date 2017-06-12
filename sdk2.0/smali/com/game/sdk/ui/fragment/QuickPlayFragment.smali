.class public Lcom/game/sdk/ui/fragment/QuickPlayFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "QuickPlayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/ui/fragment/QuickPlayFragment$NoUnderlineSpan;
    }
.end annotation


# instance fields
.field private bgLayout:Landroid/widget/RelativeLayout;

.field private changeAccountTv:Landroid/widget/TextView;

.field private intoGameBtn:Landroid/widget/Button;

.field intoGameDialog:Lcom/game/sdk/view/CustomDialog;

.field loginActivity:Lcom/game/sdk/ui/LoginActivity;

.field noticeDialog:Lcom/game/sdk/view/NoticeDialog;

.field private playAccountTv:Landroid/widget/TextView;

.field private quickRegisterLayout:Landroid/widget/LinearLayout;

.field private quickRegisterTv:Landroid/widget/TextView;

.field private registerIv:Landroid/widget/ImageView;

.field private serverLayout:Landroid/widget/LinearLayout;

.field private serviceQQTv:Landroid/widget/TextView;

.field private serviceTelTv:Landroid/widget/TextView;

.field private titleLayout:Landroid/widget/LinearLayout;

.field private titleLogo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "quick_play_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 102
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 104
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->initTheme()V

    .line 106
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v2, :cond_4

    .line 108
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->tel:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceTelTv:Landroid/widget/TextView;

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

    .line 115
    :goto_0
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/InItInfo;->qq:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceQQTv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670dQQ\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/InItInfo;->qq:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_1
    new-instance v0, Lcom/game/sdk/ui/fragment/QuickPlayFragment$NoUnderlineSpan;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment$NoUnderlineSpan;-><init>(Lcom/game/sdk/ui/fragment/QuickPlayFragment;)V

    .line 122
    .local v0, "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/QuickPlayFragment$NoUnderlineSpan;
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceTelTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 124
    .local v1, "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 127
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_0
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceQQTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 129
    .restart local v1    # "s":Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v1, v0, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 135
    .end local v0    # "mNoUnderlineSpan":Lcom/game/sdk/ui/fragment/QuickPlayFragment$NoUnderlineSpan;
    .end local v1    # "s":Landroid/text/Spannable;
    :cond_1
    :goto_2
    return-void

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5ba2\u670d\u7535\u8bdd:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "<a href=\'tel://400-796-6071\' style=\'text-decoration:none;\'>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceQQTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670dQQ\uff1a3453725652"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 132
    :cond_4
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceTelTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670d\u7535\u8bdd\uff1a400-796-6071"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceQQTv:Landroid/widget/TextView;

    const-string v3, "\u5ba2\u670dQQ\uff1a3453725652"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public initTheme()V
    .locals 11

    .prologue
    .line 148
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_0

    .line 149
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLogo:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->logoBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    :cond_0
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v8, :cond_5

    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    if-eqz v8, :cond_5

    .line 153
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v1, v8, Lcom/game/sdk/domain/StyleInfo;->bgColor:Ljava/lang/String;

    .line 154
    .local v1, "bgColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v5, v8, Lcom/game/sdk/domain/StyleInfo;->headColor:Ljava/lang/String;

    .line 155
    .local v5, "headColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v3, v8, Lcom/game/sdk/domain/StyleInfo;->btnColor:Ljava/lang/String;

    .line 156
    .local v3, "btnColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v6, v8, Lcom/game/sdk/domain/StyleInfo;->noticeColor:Ljava/lang/String;

    .line 157
    .local v6, "noticeColor":Ljava/lang/String;
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->template:Lcom/game/sdk/domain/StyleInfo;

    iget-object v4, v8, Lcom/game/sdk/domain/StyleInfo;->fontColor:Ljava/lang/String;

    .line 159
    .local v4, "changeFontColor":Ljava/lang/String;
    invoke-static {v1}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 160
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->bgLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 161
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

    .line 163
    invoke-static {v5}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 164
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 165
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 166
    .local v7, "titleBg":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "#00000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 177
    .end local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 178
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 179
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

    .line 181
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

    .line 184
    .end local v2    # "btnBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    invoke-static {v6}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 185
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serverLayout:Landroid/widget/LinearLayout;

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

    .line 188
    :cond_3
    invoke-static {v4}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 189
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

    .line 190
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v8}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 191
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

    .line 192
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

    .line 196
    :cond_4
    sget-object v8, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    .line 197
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->registerIv:Landroid/widget/ImageView;

    sget-object v9, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget-object v9, v9, Lcom/game/sdk/domain/InItInfo;->registerBitmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 201
    .end local v1    # "bgColor":Ljava/lang/String;
    .end local v3    # "btnColor":Ljava/lang/String;
    .end local v4    # "changeFontColor":Ljava/lang/String;
    .end local v5    # "headColor":Ljava/lang/String;
    .end local v6    # "noticeColor":Ljava/lang/String;
    :cond_5
    return-void

    .line 168
    .restart local v0    # "allBg":Landroid/graphics/drawable/GradientDrawable;
    .restart local v1    # "bgColor":Ljava/lang/String;
    .restart local v3    # "btnColor":Ljava/lang/String;
    .restart local v4    # "changeFontColor":Ljava/lang/String;
    .restart local v5    # "headColor":Ljava/lang/String;
    .restart local v6    # "noticeColor":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 169
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

    .line 172
    .end local v7    # "titleBg":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 173
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
    .line 76
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 77
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/LoginActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    .line 78
    const-string v0, "change_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->changeAccountTv:Landroid/widget/TextView;

    .line 79
    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterTv:Landroid/widget/TextView;

    .line 80
    const-string v0, "play_account_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->playAccountTv:Landroid/widget/TextView;

    .line 81
    const-string v0, "into_game_btn"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findButtonByString(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->intoGameBtn:Landroid/widget/Button;

    .line 83
    const-string v0, "quick_register_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    .line 85
    const-string v0, "quick_play_logo"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLogo:Landroid/widget/ImageView;

    .line 86
    const-string v0, "bg_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->bgLayout:Landroid/widget/RelativeLayout;

    .line 87
    const-string v0, "common_title_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->titleLayout:Landroid/widget/LinearLayout;

    .line 88
    const-string v0, "service_number_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serverLayout:Landroid/widget/LinearLayout;

    .line 89
    const-string v0, "register_icon"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->registerIv:Landroid/widget/ImageView;

    .line 91
    const-string v0, "service_tel_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceTelTv:Landroid/widget/TextView;

    .line 92
    const-string v0, "service_qq_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->serviceQQTv:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->changeAccountTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->intoGameBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->quickRegisterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const-string v5, "change_account_tv"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 206
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const-string v5, "quick_register_layout"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 211
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2, v6}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const-string v5, "quick_register_tv"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 215
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2, v6}, Lcom/game/sdk/ui/LoginActivity;->changeFragment(I)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const-string v5, "into_game_btn"

    invoke-virtual {p0, v5}, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->findIdByString(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 220
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v4, :cond_5

    .line 221
    sput-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 222
    new-instance v1, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v1}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 223
    .local v1, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 224
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v4, v4, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v4, v1, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 225
    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v4, v4, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v4, v2, :cond_4

    :goto_1
    iput-boolean v2, v1, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 226
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v2, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v1, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 227
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v2, v1, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 229
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v1}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 239
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :goto_2
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v2, :cond_6

    .line 240
    new-instance v2, Lcom/game/sdk/view/NoticeDialog;

    iget-object v3, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->noticeMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/game/sdk/view/NoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    .line 241
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    invoke-virtual {v2}, Lcom/game/sdk/view/NoticeDialog;->show()V

    .line 242
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->noticeDialog:Lcom/game/sdk/view/NoticeDialog;

    new-instance v3, Lcom/game/sdk/ui/fragment/QuickPlayFragment$1;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/QuickPlayFragment$1;-><init>(Lcom/game/sdk/ui/fragment/QuickPlayFragment;)V

    invoke-virtual {v2, v3}, Lcom/game/sdk/view/NoticeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .restart local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_4
    move v2, v3

    .line 225
    goto :goto_1

    .line 231
    .end local v1    # "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    :cond_5
    sput-boolean v3, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 233
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    const-string v3, "\u767b\u5f55\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/game/sdk/domain/LoginErrorMsg;

    const/4 v2, -0x1

    const-string v3, "\u767b\u5f55\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    invoke-direct {v0, v2, v3}, Lcom/game/sdk/domain/LoginErrorMsg;-><init>(ILjava/lang/String;)V

    .line 236
    .local v0, "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v2, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginError(Lcom/game/sdk/domain/LoginErrorMsg;)V

    goto :goto_2

    .line 249
    .end local v0    # "loginErrorMsg":Lcom/game/sdk/domain/LoginErrorMsg;
    :cond_6
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/QuickPlayFragment;->loginActivity:Lcom/game/sdk/ui/LoginActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 142
    return-void
.end method
