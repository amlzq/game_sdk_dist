.class final Lcom/payeco/android/plugin/util/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/util/LBSTool;


# direct methods
.method synthetic constructor <init>(Lcom/payeco/android/plugin/util/LBSTool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/payeco/android/plugin/util/j;-><init>(Lcom/payeco/android/plugin/util/LBSTool;B)V

    return-void
.end method

.method private constructor <init>(Lcom/payeco/android/plugin/util/LBSTool;B)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/util/j;->a:Lcom/payeco/android/plugin/util/LBSTool;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/payeco/android/plugin/util/j;->a:Lcom/payeco/android/plugin/util/LBSTool;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/util/LBSTool;->access$0(Lcom/payeco/android/plugin/util/LBSTool;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/util/j;->a:Lcom/payeco/android/plugin/util/LBSTool;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/util/LBSTool;->registerLocationListener()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
