.class final Lcom/payeco/android/plugin/f/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/s;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/s;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/w;->a:Lcom/payeco/android/plugin/f/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/payeco/android/plugin/e/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/payeco/android/plugin/f/s;->b()Lcom/payeco/android/plugin/bridge/JsBridge;

    move-result-object v1

    invoke-static {}, Lcom/payeco/android/plugin/f/s;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v5, "\u5f55\u97f3\u6210\u529f"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f/w;->a:Lcom/payeco/android/plugin/f/s;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/s;->dismiss()V

    goto :goto_0
.end method
