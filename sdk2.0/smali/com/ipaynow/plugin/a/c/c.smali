.class public final Lcom/ipaynow/plugin/a/c/c;
.super Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/a/c/a/a;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    invoke-interface {p1}, Lcom/ipaynow/plugin/a/c/a/a;->m()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/a/c/c;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/ipaynow/plugin/a/c/c;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v1}, Lcom/ipaynow/plugin/a/c/c;->setFocusable(Z)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/ipaynow/plugin/conf/a;->white:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/a/c/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/ipaynow/plugin/a/c/c;->update()V

    return-void
.end method
