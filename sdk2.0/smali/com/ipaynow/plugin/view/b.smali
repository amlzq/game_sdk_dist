.class public final Lcom/ipaynow/plugin/view/b;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/ipaynow/plugin/conf/a;->X:I

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/b;->setBackgroundColor(I)V

    return-void
.end method
