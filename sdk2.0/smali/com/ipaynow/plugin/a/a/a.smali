.class public abstract Lcom/ipaynow/plugin/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field public aG:Landroid/app/Activity;

.field public aH:I

.field public aI:I

.field protected aJ:Landroid/widget/RelativeLayout;

.field protected aK:Landroid/widget/LinearLayout;

.field protected aL:Landroid/widget/RelativeLayout;

.field protected aM:Landroid/widget/LinearLayout;

.field protected aN:Landroid/widget/RelativeLayout;

.field private aO:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 13

    const/16 v12, 0xf

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    iput v8, p0, Lcom/ipaynow/plugin/a/a/a;->aH:I

    iput v8, p0, Lcom/ipaynow/plugin/a/a/a;->aI:I

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aJ:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aK:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aL:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aM:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aN:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aO:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-static {p1}, Lcom/ipaynow/plugin/utils/PluginTools;->c(Landroid/content/Context;)[I

    move-result-object v0

    aget v1, v0, v8

    iput v1, p0, Lcom/ipaynow/plugin/a/a/a;->aH:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/ipaynow/plugin/a/a/a;->aI:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aO:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aO:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    const-string v5, "back.png"

    const/16 v6, 0x1e

    const/16 v7, 0x14

    invoke-static {v4, v5, v6, v7}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v4

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v5

    invoke-direct {v4, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    const-string v7, "logo.png"

    const/16 v8, 0x96

    const/16 v9, 0x14

    invoke-static {v6, v7, v8, v9}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/ipaynow/plugin/a/a/b;

    invoke-direct {v4, p0}, Lcom/ipaynow/plugin/a/a/b;-><init>(Lcom/ipaynow/plugin/a/a/a;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/ipaynow/plugin/a/a/c;

    invoke-direct {v3, v1, v2}, Lcom/ipaynow/plugin/a/a/c;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aO:Ljava/util/ArrayList;

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    invoke-direct {v2, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    const-string v5, "logo.png"

    const/16 v6, 0x96

    const/16 v7, 0x14

    invoke-static {v4, v5, v6, v7}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ipaynow/plugin/a/a/c;

    invoke-direct {v3, v1, v2}, Lcom/ipaynow/plugin/a/a/c;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/widget/RelativeLayout;)V
.end method

.method public final f()Landroid/widget/RelativeLayout;
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x42600000    # 56.0f

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aJ:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aJ:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aK:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aK:Landroid/widget/LinearLayout;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v4}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v1

    invoke-direct {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x37

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setId(I)V

    sget v2, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/ipaynow/plugin/conf/b;->Z:I

    invoke-static {v4}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ipaynow/plugin/a/a/a;->aK:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aL:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/a;->aL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aN:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aN:Landroid/widget/RelativeLayout;

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aN:Landroid/widget/RelativeLayout;

    sget v3, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aN:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/ipaynow/plugin/utils/PluginTools;->a(F)I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/a;->aN:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ipaynow/plugin/a/a/a;->aJ:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/ipaynow/plugin/a/a/a;->aK:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aJ:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ipaynow/plugin/utils/d;->e(Landroid/content/Context;)Lcom/ipaynow/plugin/utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/a;->aG:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/utils/d;->b(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ipaynow/plugin/a/a/a;->aK:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aO:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/a/a/c;

    invoke-static {v0}, Lcom/ipaynow/plugin/a/a/c;->a(Lcom/ipaynow/plugin/a/a/c;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0}, Lcom/ipaynow/plugin/a/a/c;->b(Lcom/ipaynow/plugin/a/a/c;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aL:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/a/a/a;->a(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/a/a;->aJ:Landroid/widget/RelativeLayout;

    return-object v0
.end method
