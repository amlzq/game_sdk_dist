.class final Lcom/payeco/android/plugin/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/PayecoVedioActivity;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/PayecoVedioActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoVedioActivity;->j(Lcom/payeco/android/plugin/PayecoVedioActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoVedioActivity;->j(Lcom/payeco/android/plugin/PayecoVedioActivity;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoVedioActivity;->a(Lcom/payeco/android/plugin/PayecoVedioActivity;Landroid/hardware/Camera;)V

    :try_start_0
    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoVedioActivity;->j(Lcom/payeco/android/plugin/PayecoVedioActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoVedioActivity;->j(Lcom/payeco/android/plugin/PayecoVedioActivity;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoVedioActivity;->j(Lcom/payeco/android/plugin/PayecoVedioActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-static {v0}, Lcom/payeco/android/plugin/PayecoVedioActivity;->j(Lcom/payeco/android/plugin/PayecoVedioActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iget-object v0, p0, Lcom/payeco/android/plugin/ac;->a:Lcom/payeco/android/plugin/PayecoVedioActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/PayecoVedioActivity;->a(Lcom/payeco/android/plugin/PayecoVedioActivity;Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method
