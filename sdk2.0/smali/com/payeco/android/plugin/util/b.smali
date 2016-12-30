.class public final Lcom/payeco/android/plugin/util/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "post"

    iput-object v1, p0, Lcom/payeco/android/plugin/util/b;->c:Ljava/lang/String;

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->a()V

    :cond_1
    iput-object p1, p0, Lcom/payeco/android/plugin/util/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payeco/android/plugin/util/b;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/payeco/android/plugin/util/b;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payeco/android/plugin/util/b;->e:Ljava/util/HashMap;

    return-void

    :cond_2
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/payeco/android/plugin/util/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/payeco/android/plugin/util/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/payeco/android/plugin/util/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->e:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/payeco/android/plugin/util/l;)V
    .locals 2

    new-instance v0, Lcom/payeco/android/plugin/util/c;

    invoke-direct {v0, p0, p1}, Lcom/payeco/android/plugin/util/c;-><init>(Lcom/payeco/android/plugin/util/b;Lcom/payeco/android/plugin/util/l;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/util/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/util/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/b;->b:Ljava/util/ArrayList;

    return-void
.end method
