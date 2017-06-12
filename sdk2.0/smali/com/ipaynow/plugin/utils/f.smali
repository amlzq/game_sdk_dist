.class public final Lcom/ipaynow/plugin/utils/f;
.super Ljava/lang/Object;


# instance fields
.field private bb:Landroid/widget/Toast;

.field private bc:Ljava/lang/String;

.field private bd:I

.field private be:I

.field private context:Landroid/content/Context;

.field private duration:I

.field private gravity:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/plugin/utils/f;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final T()Landroid/widget/Toast;
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Context\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->view:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bc:Ljava/lang/String;

    iget v2, p0, Lcom/ipaynow/plugin/utils/f;->duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/plugin/utils/f;->duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/plugin/utils/f;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/plugin/utils/f;->gravity:I

    iget v2, p0, Lcom/ipaynow/plugin/utils/f;->bd:I

    iget v3, p0, Lcom/ipaynow/plugin/utils/f;->be:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/ipaynow/plugin/utils/f;->bb:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public final b(I)Lcom/ipaynow/plugin/utils/f;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "time\u4e3a0"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/ipaynow/plugin/utils/f;->duration:I

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Lcom/ipaynow/plugin/utils/f;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "text\u4e3anull"

    invoke-static {v0}, Lcom/ipaynow/plugin/log/LogUtils;->w(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/ipaynow/plugin/utils/f;->bc:Ljava/lang/String;

    return-object p0
.end method
