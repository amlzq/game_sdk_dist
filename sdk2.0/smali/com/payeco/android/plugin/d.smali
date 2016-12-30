.class final Lcom/payeco/android/plugin/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/PayecoCameraActivity;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/PayecoCameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/d;->a:Lcom/payeco/android/plugin/PayecoCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/payeco/android/plugin/d;->a:Lcom/payeco/android/plugin/PayecoCameraActivity;

    # getter for: Lcom/payeco/android/plugin/PayecoCameraActivity;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v1}, Lcom/payeco/android/plugin/PayecoCameraActivity;->access$0(Lcom/payeco/android/plugin/PayecoCameraActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/payeco/android/plugin/d;->a:Lcom/payeco/android/plugin/PayecoCameraActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/PayecoCameraActivity;->setResult(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/d;->a:Lcom/payeco/android/plugin/PayecoCameraActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoCameraActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/payeco/android/plugin/d;->a:Lcom/payeco/android/plugin/PayecoCameraActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/PayecoCameraActivity;->setResult(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/d;->a:Lcom/payeco/android/plugin/PayecoCameraActivity;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/PayecoCameraActivity;->finish()V

    goto :goto_0
.end method
