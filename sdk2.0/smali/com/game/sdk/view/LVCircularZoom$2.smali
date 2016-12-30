.class Lcom/game/sdk/view/LVCircularZoom$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LVCircularZoom.java"


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
    iput-object p1, p0, Lcom/game/sdk/view/LVCircularZoom$2;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    .line 114
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 119
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 129
    iget-object v0, p0, Lcom/game/sdk/view/LVCircularZoom$2;->this$0:Lcom/game/sdk/view/LVCircularZoom;

    # getter for: Lcom/game/sdk/view/LVCircularZoom;->mJumpValue:I
    invoke-static {v0}, Lcom/game/sdk/view/LVCircularZoom;->access$2(Lcom/game/sdk/view/LVCircularZoom;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/game/sdk/view/LVCircularZoom;->access$3(Lcom/game/sdk/view/LVCircularZoom;I)V

    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 124
    return-void
.end method
