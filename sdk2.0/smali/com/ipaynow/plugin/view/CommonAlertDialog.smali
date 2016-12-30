.class public Lcom/ipaynow/plugin/view/CommonAlertDialog;
.super Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/ipaynow/plugin/view/CommonAlertDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p3}, Lcom/ipaynow/plugin/view/CommonAlertDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ipaynow/plugin/view/CommonAlertDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p0, v0, p4}, Lcom/ipaynow/plugin/view/CommonAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_0

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p0, v0, p5}, Lcom/ipaynow/plugin/view/CommonAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method
