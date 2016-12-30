.class final Lcom/payeco/android/plugin/util/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/util/b;

.field private final synthetic b:Lcom/payeco/android/plugin/util/l;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/util/b;Lcom/payeco/android/plugin/util/l;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    iput-object p2, p0, Lcom/payeco/android/plugin/util/c;->b:Lcom/payeco/android/plugin/util/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "post"

    iget-object v2, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/b;->b(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/util/b;->c(Lcom/payeco/android/plugin/util/b;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/util/b;->d(Lcom/payeco/android/plugin/util/b;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/util/d;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "get"

    iget-object v2, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/b;->b(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/util/b;->d(Lcom/payeco/android/plugin/util/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/util/d;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "upfile"

    iget-object v2, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/b;->b(Lcom/payeco/android/plugin/util/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v1}, Lcom/payeco/android/plugin/util/b;->c(Lcom/payeco/android/plugin/util/b;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/util/c;->a:Lcom/payeco/android/plugin/util/b;

    invoke-static {v2}, Lcom/payeco/android/plugin/util/b;->e(Lcom/payeco/android/plugin/util/b;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/util/d;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/util/c;->b:Lcom/payeco/android/plugin/util/l;

    invoke-interface {v0, p1}, Lcom/payeco/android/plugin/util/l;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/util/c;->b:Lcom/payeco/android/plugin/util/l;

    invoke-interface {v0}, Lcom/payeco/android/plugin/util/l;->a()V

    goto :goto_0
.end method
