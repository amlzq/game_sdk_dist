.class public final Lcom/ipaynow/plugin/view/d;
.super Landroid/app/AlertDialog$Builder;


# static fields
.field private static bK:Lcom/ipaynow/plugin/view/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/view/d;->bK:Lcom/ipaynow/plugin/view/d;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/ipaynow/plugin/view/d;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p3}, Lcom/ipaynow/plugin/view/d;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/ipaynow/plugin/view/e;

    invoke-direct {v1, p0}, Lcom/ipaynow/plugin/view/e;-><init>(Lcom/ipaynow/plugin/view/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/plugin/view/d;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ipaynow/plugin/view/d;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/view/d;->bK:Lcom/ipaynow/plugin/view/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ipaynow/plugin/view/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/ipaynow/plugin/view/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ipaynow/plugin/view/d;->bK:Lcom/ipaynow/plugin/view/d;

    :cond_0
    sget-object v0, Lcom/ipaynow/plugin/view/d;->bK:Lcom/ipaynow/plugin/view/d;

    return-object v0
.end method
