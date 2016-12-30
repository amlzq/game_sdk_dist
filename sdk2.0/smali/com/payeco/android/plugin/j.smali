.class final Lcom/payeco/android/plugin/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/j;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/payeco/android/plugin/j;->a:Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgress(Ljava/lang/String;Z)V

    return-void
.end method
