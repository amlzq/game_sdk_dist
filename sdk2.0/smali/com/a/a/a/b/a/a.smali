.class public abstract Lcom/a/a/a/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field protected final q:Ljava/lang/String;

.field protected final r:Ljava/lang/String;

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.1.0"

    iput-object v0, p0, Lcom/a/a/a/b/a/a;->q:Ljava/lang/String;

    const-string v0, "native"

    iput-object v0, p0, Lcom/a/a/a/b/a/a;->r:Ljava/lang/String;

    const-string v0, "native"

    iput-object v0, p0, Lcom/a/a/a/b/a/a;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_mqqpay_baseapi_appid"

    iget-object v1, p0, Lcom/a/a/a/b/a/a;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_appname"

    iget-object v1, p0, Lcom/a/a/a/b/a/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_apptype"

    const-string v1, "native"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_sdkversion"

    const-string v1, "1.1.0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_apiname"

    invoke-virtual {p0}, Lcom/a/a/a/b/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_apimark"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method
