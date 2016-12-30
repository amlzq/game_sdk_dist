.class final Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;-><init>(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/ipaynow/plugin/conf/a;->W:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v0}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->d(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/h;->aB:Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;

    invoke-static {v1}, Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;->l(Lcom/ipaynow/plugin/inner_plugin/prepay_plugin/activity/PrePayActivity;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/plugin/utils/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
