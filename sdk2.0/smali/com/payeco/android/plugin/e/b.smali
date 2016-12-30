.class final Lcom/payeco/android/plugin/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/e/a;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/e/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/e/b;->a:Lcom/payeco/android/plugin/e/a;

    iput p2, p0, Lcom/payeco/android/plugin/e/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/payeco/android/plugin/e/b;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/payeco/android/plugin/e/b;->a:Lcom/payeco/android/plugin/e/a;

    invoke-static {}, Lcom/payeco/android/plugin/e/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
