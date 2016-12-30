.class public abstract Lcom/a/a/a/b/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected final t:I

.field protected final u:I

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v1, -0x98967f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/a/a/a/b/a/b;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/b/a/b;->u:I

    iput v1, p0, Lcom/a/a/a/b/a/b;->v:I

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_mqqpay_baseresp_retcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/b/a/b;->v:I

    const-string v0, "_mqqpay_baseresp_retmsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/b/a/b;->w:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_apiname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/b/a/b;->x:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_apimark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/b/a/b;->y:I

    return-void
.end method

.method public abstract d()Z
.end method
