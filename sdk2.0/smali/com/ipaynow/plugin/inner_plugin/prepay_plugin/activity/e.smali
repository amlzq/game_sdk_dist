.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 v0, 0x0

    return v0

    :pswitch_1
    sget v1, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/e;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->k(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
