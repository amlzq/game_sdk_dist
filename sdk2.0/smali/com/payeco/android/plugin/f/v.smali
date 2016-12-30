.class final Lcom/payeco/android/plugin/f/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/payeco/android/plugin/f/s;


# direct methods
.method constructor <init>(Lcom/payeco/android/plugin/f/s;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/f/v;->a:Lcom/payeco/android/plugin/f/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/payeco/android/plugin/f/s;->b()Lcom/payeco/android/plugin/bridge/JsBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->startPlay()Ljava/lang/String;

    return-void
.end method
