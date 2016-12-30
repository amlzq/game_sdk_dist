.class final Lcom/payeco/android/plugin/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/n;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/n;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/o;->a:Lcom/payeco/android/plugin/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/payeco/android/plugin/util/LBSTool;

    iget-object v1, p0, Lcom/payeco/android/plugin/o;->a:Lcom/payeco/android/plugin/n;

    iget-object v1, v1, Lcom/payeco/android/plugin/n;->a:Lcom/payeco/android/plugin/m;

    invoke-static {v1}, Lcom/payeco/android/plugin/m;->a(Lcom/payeco/android/plugin/m;)Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/payeco/android/plugin/util/LBSTool;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/payeco/android/plugin/util/LBSTool;->startQuryLocation()V

    return-void
.end method
