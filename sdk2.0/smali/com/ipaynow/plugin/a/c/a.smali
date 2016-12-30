.class public final Lcom/ipaynow/plugin/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/plugin/a/c/a/a;


# instance fields
.field private aE:Ljava/util/ArrayList;

.field private av:Landroid/graphics/drawable/GradientDrawable;

.field private aw:Landroid/graphics/drawable/GradientDrawable;

.field private bk:D

.field private bl:Landroid/app/Activity;

.field private bm:Landroid/widget/Button;

.field private bn:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/view/View$OnClickListener;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ipaynow/plugin/a/c/a;->aE:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/ipaynow/plugin/a/c/a;->bk:D

    iput-object v2, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    iput-object v2, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    iput-object v2, p0, Lcom/ipaynow/plugin/a/c/a;->bn:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/ipaynow/plugin/a/c/a;->av:Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/ipaynow/plugin/a/c/a;->aw:Landroid/graphics/drawable/GradientDrawable;

    iput-object p2, p0, Lcom/ipaynow/plugin/a/c/a;->aE:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ipaynow/plugin/a/c/a;->bn:Landroid/view/View$OnClickListener;

    sget v0, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-static {v3, v0}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->av:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->av:Landroid/graphics/drawable/GradientDrawable;

    sget v1, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v0, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-static {v3, v0}, Lcom/ipaynow/plugin/utils/PluginTools;->a(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->aw:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->aw:Landroid/graphics/drawable/GradientDrawable;

    sget v1, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/plugin/a/c/a;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->av:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic b(Lcom/ipaynow/plugin/a/c/a;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->aw:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method


# virtual methods
.method public final e(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/a/c/a;->aE:Ljava/util/ArrayList;

    return-void
.end method

.method public final m()Landroid/view/ViewGroup;
    .locals 14

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v0, v4

    iget-wide v2, p0, Lcom/ipaynow/plugin/a/c/a;->bk:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v5, v0

    new-instance v6, Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x37

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setId(I)V

    sget v0, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    sget-object v0, Lcom/ipaynow/plugin/conf/c;->ac:Landroid/graphics/drawable/Drawable;

    invoke-static {v6, v0}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    int-to-float v0, v3

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_0

    invoke-virtual {v6, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object v6

    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/4 v1, 0x0

    int-to-double v10, v3

    iget-wide v12, p0, Lcom/ipaynow/plugin/a/c/a;->bk:D

    mul-double/2addr v10, v12

    double-to-int v0, v10

    move v2, v1

    move v1, v0

    :goto_1
    int-to-double v10, v2

    iget-wide v12, p0, Lcom/ipaynow/plugin/a/c/a;->bk:D

    cmpg-double v0, v10, v12

    if-gez v0, :cond_1

    if-lt v1, v4, :cond_3

    :cond_1
    rem-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_2

    int-to-float v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v5, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    sget v1, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    sget v1, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v2

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v11

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/widget/Button;

    iget-object v10, p0, Lcom/ipaynow/plugin/a/c/a;->bl:Landroid/app/Activity;

    invoke-direct {v0, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    iget-object v10, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    sget v10, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    const/4 v10, 0x1

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v0, v10, v11}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    iget-object v10, p0, Lcom/ipaynow/plugin/a/c/a;->av:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0, v10}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v11}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v11

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v12}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v12

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v13}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v13

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v10, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    new-instance v11, Lcom/ipaynow/plugin/a/c/b;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/ipaynow/plugin/a/c/b;-><init>(Lcom/ipaynow/plugin/a/c/a;B)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v10, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    iget-object v11, p0, Lcom/ipaynow/plugin/a/c/a;->bn:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/ipaynow/plugin/a/c/a;->bm:Landroid/widget/Button;

    invoke-virtual {v8, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
