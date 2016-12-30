.class final Lcom/ipaynow/plugin/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bL:Lcom/ipaynow/plugin/view/d;


# direct methods
.method constructor <init>(Lcom/ipaynow/plugin/view/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/view/e;->bL:Lcom/ipaynow/plugin/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
