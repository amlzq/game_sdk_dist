.class public final Lcom/ipaynow/plugin/a/b/c/c;
.super Ljava/lang/Object;


# instance fields
.field private bg:Landroid/graphics/Bitmap;

.field private bh:Ljava/lang/String;

.field private bi:Ljava/lang/String;

.field final synthetic bj:Lcom/ipaynow/plugin/a/b/c/b;


# direct methods
.method public constructor <init>(Lcom/ipaynow/plugin/a/b/c/b;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/ipaynow/plugin/a/b/c/c;->bj:Lcom/ipaynow/plugin/a/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->bg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->bh:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->bi:Ljava/lang/String;

    iput-object p2, p0, Lcom/ipaynow/plugin/a/b/c/c;->bg:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ipaynow/plugin/a/b/c/c;->bh:Ljava/lang/String;

    iput-object p4, p0, Lcom/ipaynow/plugin/a/b/c/c;->bi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->bi:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->bg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/c;->bh:Ljava/lang/String;

    return-object v0
.end method
