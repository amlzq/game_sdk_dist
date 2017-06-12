.class Lcom/game/sdk/ui/PayActivity$3;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/PayActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 314
    if-nez p2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    const-string v4, "coupon_coin_text"

    invoke-virtual {v3, v4}, Lcom/game/sdk/ui/PayActivity;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$21(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 318
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 321
    .local v0, "goodsWorth":F
    :goto_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 322
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    add-float/2addr v3, v0

    invoke-static {v2, v3}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;F)V

    .line 323
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v2, v3}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;F)V

    .line 324
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$23(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .end local v0    # "goodsWorth":F
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$3;->this$0:Lcom/game/sdk/ui/PayActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/game/sdk/ui/PayActivity;->access$24(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    .line 329
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 320
    goto :goto_0

    .line 324
    .restart local v0    # "goodsWorth":F
    :cond_3
    const-string v1, "0"

    goto :goto_1
.end method
