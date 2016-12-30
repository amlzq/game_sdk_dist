.class public final Lcom/ipaynow/plugin/a/b/c/b;
.super Ljava/lang/Object;


# instance fields
.field private be:Ljava/util/ArrayList;

.field public final bf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/b;->be:Ljava/util/ArrayList;

    iput v1, p0, Lcom/ipaynow/plugin/a/b/c/b;->bf:I

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/ipaynow/plugin/a/b/c/c;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/b;->be:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/plugin/a/b/c/c;

    return-object v0
.end method

.method public final a(Lcom/ipaynow/plugin/a/b/c/c;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/b;->be:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/b;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
