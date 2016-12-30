.class public final Lcom/a/a/a/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/a/a/a/a/a;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/a/a/a/a/d;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
