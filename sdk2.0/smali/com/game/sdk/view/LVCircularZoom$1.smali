.class Lcom/game/sdk/view/LVCircularZoom$1;
.super Ljava/lang/Object;
.source "LVCircularZoom.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/view/LVCircularZoom;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/view/LVCircularZoom;


# direct methods
.method constructor <init>(Lcom/game/sdk/view/LVCircularZoom;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/view/LVCircularZoom$1;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom$1;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/game/sdk/view/LVCircularZoom;->access$0(Lcom/game/sdk/view/LVCircularZoom;F)V

    .line 107
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom$1;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    # getter for: Lcom/game/sdk/view/LVCircularZoom;->mAnimatedValue:F
    invoke-static {v0}, Lcom/game/sdk/view/LVCircularZoom;->access$1(Lcom/game/sdk/view/LVCircularZoom;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom$1;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1}, Lcom/game/sdk/view/LVCircularZoom;->access$0(Lcom/game/sdk/view/LVCircularZoom;F)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom$1;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    invoke-virtual {v0}, Lcom/game/sdk/view/LVCircularZoom;->invalidate()V

    .line 112
    return-void
.end method
