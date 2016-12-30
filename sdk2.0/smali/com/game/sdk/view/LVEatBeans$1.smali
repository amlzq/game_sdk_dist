.class Lcom/game/sdk/view/LVEatBeans$1;
.super Ljava/lang/Object;
.source "LVEatBeans.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/view/LVEatBeans;->startViewAnim(FFJ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/view/LVEatBeans;


# direct methods
.method constructor <init>(Lcom/game/sdk/view/LVEatBeans;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 132
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

    move-result v0

    .line 133
    .local v0, "mAnimatedValue":F
    iget-object v1, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    iget-object v2, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    # getter for: Lcom/game/sdk/view/LVEatBeans;->mWidth:F
    invoke-static {v2}, Lcom/game/sdk/view/LVEatBeans;->access$0(Lcom/game/sdk/view/LVEatBeans;)F

    move-result v2

    iget-object v3, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    # getter for: Lcom/game/sdk/view/LVEatBeans;->mPadding:F
    invoke-static {v3}, Lcom/game/sdk/view/LVEatBeans;->access$1(Lcom/game/sdk/view/LVEatBeans;)F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    # getter for: Lcom/game/sdk/view/LVEatBeans;->eatErWidth:F
    invoke-static {v3}, Lcom/game/sdk/view/LVEatBeans;->access$2(Lcom/game/sdk/view/LVEatBeans;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/game/sdk/view/LVEatBeans;->access$3(Lcom/game/sdk/view/LVEatBeans;F)V

    .line 134
    iget-object v1, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    iget-object v2, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    # getter for: Lcom/game/sdk/view/LVEatBeans;->mAngle:F
    invoke-static {v2}, Lcom/game/sdk/view/LVEatBeans;->access$4(Lcom/game/sdk/view/LVEatBeans;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    iget v4, v4, Lcom/game/sdk/view/LVEatBeans;->eatSpeed:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    iget v5, v5, Lcom/game/sdk/view/LVEatBeans;->eatSpeed:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/game/sdk/view/LVEatBeans;->access$5(Lcom/game/sdk/view/LVEatBeans;F)V

    .line 135
    iget-object v1, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    const/high16 v2, 0x43b40000    # 360.0f

    iget-object v3, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    # getter for: Lcom/game/sdk/view/LVEatBeans;->eatErStrtAngle:F
    invoke-static {v3}, Lcom/game/sdk/view/LVEatBeans;->access$6(Lcom/game/sdk/view/LVEatBeans;)F

    move-result v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/game/sdk/view/LVEatBeans;->access$7(Lcom/game/sdk/view/LVEatBeans;F)V

    .line 136
    iget-object v1, p0, Lcom/game/sdk/view/LVEatBeans$1;->this$0:Lcom/game/sdk/view/LVEatBeans;

    invoke-virtual {v1}, Lcom/game/sdk/view/LVEatBeans;->invalidate()V

    .line 137
    return-void
.end method
