.class public final Lcom/ipaynow/plugin/view/c;
.super Landroid/widget/ImageView;


# instance fields
.field private bB:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/ipaynow/plugin/view/b/a;->Y()Lcom/ipaynow/plugin/view/b/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/ipaynow/plugin/view/b/a;->getDp(I)I

    move-result v0

    iput v0, p0, Lcom/ipaynow/plugin/view/c;->bB:I

    invoke-virtual {p0, v4}, Lcom/ipaynow/plugin/view/c;->setClickable(Z)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/ipaynow/plugin/view/c;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget v1, p0, Lcom/ipaynow/plugin/view/c;->bB:I

    int-to-float v1, v1

    aput v1, v0, v4

    const/4 v1, 0x2

    iget v2, p0, Lcom/ipaynow/plugin/view/c;->bB:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget v1, p0, Lcom/ipaynow/plugin/view/c;->bB:I

    int-to-float v1, v1

    aput v1, v0, v5

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    aput v3, v0, v6

    const/4 v1, 0x7

    aput v3, v0, v1

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
