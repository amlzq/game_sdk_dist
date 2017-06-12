.class public final Lcom/ipaynow/plugin/view/a;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private bv:Ljava/lang/String;

.field private bw:Lcom/ipaynow/plugin/view/b/a;

.field private context:Landroid/content/Context;

.field private mhtOrderAmt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ipaynow/plugin/view/a;->bv:Ljava/lang/String;

    iput-object p3, p0, Lcom/ipaynow/plugin/view/a;->mhtOrderAmt:Ljava/lang/String;

    iput-object p1, p0, Lcom/ipaynow/plugin/view/a;->context:Landroid/content/Context;

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/a;->setGravity(I)V

    invoke-direct {p0}, Lcom/ipaynow/plugin/view/a;->W()V

    return-void
.end method

.method private W()V
    .locals 15

    const/16 v14, 0x21

    const/16 v13, 0x18

    const/4 v12, -0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v5, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a;->context:Landroid/content/Context;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/ipaynow/plugin/view/b/g;->body_content_title_id:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a;->bv:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v5, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x10

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v0, v13}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/view/a;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%.2f"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-static {v2, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, v7

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const-string v7, "#D1111D"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v2, v4, v1, v7, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x19

    invoke-direct {v4, v7, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v2, v4, v1, v7, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/SpannableString;

    const-string v7, "\u00a5 "

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    sget v8, Lcom/ipaynow/plugin/conf/PluginConfig$color;->thin_black:I

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v4, v7, v1, v8, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x12

    invoke-direct {v7, v8, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v4, v7, v1, v8, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ipaynow/plugin/view/a;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/ipaynow/plugin/view/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v2, v13}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput-boolean v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ipaynow/plugin/view/a;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v4, "#88888888"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ipaynow/plugin/view/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v3, v13}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/ipaynow/plugin/view/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    invoke-virtual {v3, v13}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/ipaynow/plugin/view/a;->bw:Lcom/ipaynow/plugin/view/b/a;

    const/4 v7, 0x6

    invoke-virtual {v3, v7}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v3, 0x3

    sget v7, Lcom/ipaynow/plugin/view/b/g;->body_content_title_id:I

    invoke-virtual {v4, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v5, v6}, Lcom/ipaynow/plugin/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1, v0}, Lcom/ipaynow/plugin/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v4}, Lcom/ipaynow/plugin/view/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    aget-char v2, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, v7

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_2

    move v2, v3

    :goto_1
    array-length v4, v7

    add-int/lit8 v4, v4, -0x4

    sub-int/2addr v4, v0

    rem-int/lit8 v4, v4, 0x3

    if-nez v4, :cond_3

    move v4, v3

    :goto_2
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2
.end method
