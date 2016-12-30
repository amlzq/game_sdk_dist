.class final Lcom/ipaynow/plugin/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic bo:Lcom/ipaynow/plugin/a/c/a;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/a/c/b;->bo:Lcom/ipaynow/plugin/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/a/c/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/a/c/b;-><init>(Lcom/ipaynow/plugin/a/c/a;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget v0, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/b;->bo:Lcom/ipaynow/plugin/a/c/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/a/c/a;->a(Lcom/ipaynow/plugin/a/c/a;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/a/c/b;->bo:Lcom/ipaynow/plugin/a/c/a;

    invoke-static {v0}, Lcom/ipaynow/plugin/a/c/a;->b(Lcom/ipaynow/plugin/a/c/a;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
