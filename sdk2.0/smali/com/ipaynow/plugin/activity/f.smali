.class final Lcom/ipaynow/plugin/activity/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic e:Lcom/ipaynow/plugin/activity/PayMethodActivity;


# direct methods
.method private constructor <init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/plugin/activity/f;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/plugin/activity/f;-><init>(Lcom/ipaynow/plugin/activity/PayMethodActivity;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    check-cast p1, Lcom/ipaynow/plugin/view/c;

    invoke-virtual {p1}, Lcom/ipaynow/plugin/view/c;->p()Lcom/ipaynow/plugin/a/b/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/plugin/activity/f;->e:Lcom/ipaynow/plugin/activity/PayMethodActivity;

    invoke-virtual {v0}, Lcom/ipaynow/plugin/a/b/c/c;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ipaynow/plugin/activity/PayMethodActivity;->a(Lcom/ipaynow/plugin/activity/PayMethodActivity;Ljava/lang/String;)V

    return-void
.end method
