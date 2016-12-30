.class public final Lcom/ipaynow/plugin/a/b/c/a;
.super Ljava/lang/Object;


# instance fields
.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/a;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/plugin/a/b/c/a;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/ipaynow/plugin/a/b/c/a;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/ipaynow/plugin/a/b/c/a;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/plugin/a/b/c/a;->value:Ljava/lang/String;

    return-object v0
.end method
