.class public final Lcom/ipaynow/plugin/a/a/d;
.super Lcom/ipaynow/plugin/a/a/a;


# instance fields
.field private aE:Ljava/util/ArrayList;

.field private aS:Landroid/widget/LinearLayout;

.field private aT:Landroid/widget/LinearLayout;

.field private aU:Landroid/widget/LinearLayout;

.field private aV:Landroid/widget/LinearLayout;

.field private aW:Landroid/widget/LinearLayout;

.field private aX:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/a/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aE:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aU:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aV:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aW:Landroid/widget/LinearLayout;

    sget v0, Lcom/ipaynow/plugin/conf/b;->Z:I

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ipaynow/plugin/a/a/d;->aX:I

    iput-object p2, p0, Lcom/ipaynow/plugin/a/a/d;->aE:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/RelativeLayout;)V
    .locals 12

    const/high16 v9, 0x41c00000    # 24.0f

    const/4 v8, 0x1

    const/4 v11, -0x2

    const/4 v10, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    sget v1, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    sget v2, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/ipaynow/plugin/a/a/d;->aX:I

    int-to-double v2, v2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/ipaynow/plugin/view/a;

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    const-string v4, "\u8ba2\u5355\u8be6\u60c5"

    invoke-direct {v2, v3, v4}, Lcom/ipaynow/plugin/view/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/ipaynow/plugin/a/b/b/a;

    iget-object v6, p0, Lcom/ipaynow/plugin/a/a/d;->aE:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Lcom/ipaynow/plugin/a/b/b/a;-><init>(Ljava/util/ArrayList;)V

    new-instance v6, Lcom/ipaynow/plugin/a/b/a;

    iget-object v7, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    invoke-direct {v6, v5, v7}, Lcom/ipaynow/plugin/a/b/a;-><init>(Lcom/ipaynow/plugin/a/b/a/a;Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v9}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v9}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/ipaynow/plugin/view/b;

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/ipaynow/plugin/view/b;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v4

    invoke-direct {v3, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/ipaynow/plugin/a/a/d;->aG:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ipaynow/plugin/a/a/d;->aU:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/d;->aU:Landroid/widget/LinearLayout;

    sget v5, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/d;->aU:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/ipaynow/plugin/a/a/d;->aX:I

    int-to-double v6, v5

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/ipaynow/plugin/a/a/d;->aT:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/d;->aU:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v2, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u52c7\u6562 \u00b7 \u7b80\u5355 \u00b7 \u6e29\u6696"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/ipaynow/plugin/conf/a;->black:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/ipaynow/plugin/a/a/d;->aW:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/d;->aS:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aW:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final g()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aU:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final h()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/d;->aW:Landroid/widget/LinearLayout;

    return-object v0
.end method
