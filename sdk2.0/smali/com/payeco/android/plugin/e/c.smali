.class final Lcom/payeco/android/plugin/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/e/a;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/e/c;->a:Lcom/payeco/android/plugin/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/payeco/android/plugin/e/a;->c:Z

    return-void
.end method
