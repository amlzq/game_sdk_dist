.class final Lcom/payeco/android/plugin/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/e;

.field private final synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/e;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f;->a:Lcom/payeco/android/plugin/e;

    iput-object p2, p0, Lcom/payeco/android/plugin/f;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/payeco/android/plugin/f;->a:Lcom/payeco/android/plugin/e;

    invoke-static {v0}, Lcom/payeco/android/plugin/e;->a(Lcom/payeco/android/plugin/e;)Lcom/payeco/android/plugin/PayecoCameraActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/payeco/android/plugin/PayecoCameraActivity;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/payeco/android/plugin/f;->a:Lcom/payeco/android/plugin/e;

    invoke-static {v1}, Lcom/payeco/android/plugin/e;->a(Lcom/payeco/android/plugin/e;)Lcom/payeco/android/plugin/PayecoCameraActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/payeco/android/plugin/PayecoCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/payeco/android/plugin/f;->a:Lcom/payeco/android/plugin/e;

    invoke-static {v2}, Lcom/payeco/android/plugin/e;->a(Lcom/payeco/android/plugin/e;)Lcom/payeco/android/plugin/PayecoCameraActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/payeco/android/plugin/PayecoCameraActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/payeco/android/plugin/f;->a:Lcom/payeco/android/plugin/e;

    invoke-static {v3}, Lcom/payeco/android/plugin/e;->a(Lcom/payeco/android/plugin/e;)Lcom/payeco/android/plugin/PayecoCameraActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/payeco/android/plugin/PayecoCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/f;->b:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
