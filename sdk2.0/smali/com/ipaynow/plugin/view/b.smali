.class public final Lcom/ipaynow/plugin/view/b;
.super Landroid/widget/LinearLayout;


# static fields
.field public static bA:[I

.field public static bx:[I

.field public static by:[I

.field public static bz:[I


# instance fields
.field private bB:I

.field private bC:Landroid/graphics/drawable/Drawable;

.field private bD:Ljava/lang/String;

.field private bE:Lcom/ipaynow/plugin/view/template/a/c/c;

.field private bF:I

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-array v0, v2, [I

    sput-object v0, Lcom/ipaynow/plugin/view/b;->bx:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ipaynow/plugin/view/b;->by:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/ipaynow/plugin/view/b;->bz:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ipaynow/plugin/view/b;->bA:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ipaynow/plugin/view/template/a/c/c;)V
    .locals 12

    const/4 v11, -0x2

    const/4 v10, -0x1

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    iput-object v3, p0, Lcom/ipaynow/plugin/view/b;->context:Landroid/content/Context;

    iput-object v3, p0, Lcom/ipaynow/plugin/view/b;->bC:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/ipaynow/plugin/view/b;->bD:Ljava/lang/String;

    iput-object v3, p0, Lcom/ipaynow/plugin/view/b;->bE:Lcom/ipaynow/plugin/view/template/a/c/c;

    const-string v0, "#FFEEEEEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/b;->bF:I

    iput-object p1, p0, Lcom/ipaynow/plugin/view/b;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/ipaynow/plugin/view/template/a/c/c;->ah()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/b;->bC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/ipaynow/plugin/view/template/a/c/c;->ai()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/plugin/view/b;->bD:Ljava/lang/String;

    iput-object p2, p0, Lcom/ipaynow/plugin/view/b;->bE:Lcom/ipaynow/plugin/view/template/a/c/c;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/b;->setGravity(I)V

    invoke-virtual {p0, v8}, Lcom/ipaynow/plugin/view/b;->setOrientation(I)V

    invoke-virtual {p0, v9}, Lcom/ipaynow/plugin/view/b;->setClickable(Z)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v1, v1

    aput v1, v0, v8

    iget v1, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v1, v1

    aput v1, v0, v9

    const/4 v1, 0x2

    iget v2, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/ipaynow/plugin/view/b;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/ipaynow/plugin/view/b;->bF:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Lcom/ipaynow/plugin/view/b;->by:[I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Lcom/ipaynow/plugin/view/b;->bx:[I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/ipaynow/plugin/view/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ipaynow/plugin/view/b;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ipaynow/plugin/view/b;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/ipaynow/plugin/view/b;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/ipaynow/plugin/view/b;->bC:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-virtual {v4, v8, v5, v8, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/ipaynow/plugin/view/b;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/ipaynow/plugin/view/b;->bD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v7, Lcom/ipaynow/plugin/conf/PluginConfig$color;->black:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEms(I)V

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final X()Lcom/ipaynow/plugin/view/template/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/view/b;->bE:Lcom/ipaynow/plugin/view/template/a/c/c;

    return-object v0
.end method
