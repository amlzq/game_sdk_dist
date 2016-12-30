.class Lcom/game/sdk/ui/PayActivity$5;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/PayActivity;->showCouponList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/PayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "row"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 482
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->pwCoupon:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$23(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 484
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$24(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 486
    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponInfoList:Ljava/util/List;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$24(Lcom/game/sdk/ui/PayActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/game/sdk/domain/CouponInfo;

    invoke-static {v5, v3}, Lcom/game/sdk/ui/PayActivity;->access$25(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    .line 487
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 488
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->cardId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 489
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 490
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 492
    .local v0, "goodsWorth":F
    :goto_0
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 493
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->lastCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$26(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 495
    .local v1, "lastGoodsWorth":F
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5143"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$18(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$19(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 498
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$19(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 500
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    cmpl-float v3, v1, v4

    if-lez v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    add-float/2addr v5, v1

    sub-float/2addr v5, v0

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$8(Lcom/game/sdk/ui/PayActivity;F)V

    .line 503
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$8(Lcom/game/sdk/ui/PayActivity;F)V

    .line 505
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$21(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    :cond_0
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    .line 526
    .end local v0    # "goodsWorth":F
    .end local v1    # "lastGoodsWorth":F
    .end local v2    # "temp":Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v4

    .line 490
    goto/16 :goto_0

    .restart local v0    # "goodsWorth":F
    :cond_3
    move v1, v4

    .line 493
    goto/16 :goto_1

    .line 505
    .restart local v1    # "lastGoodsWorth":F
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_4
    const-string v3, "0"

    goto :goto_2

    .line 510
    .end local v0    # "goodsWorth":F
    .end local v1    # "lastGoodsWorth":F
    .end local v2    # "temp":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$22(Lcom/game/sdk/ui/PayActivity;Lcom/game/sdk/domain/CouponInfo;)V

    .line 511
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 512
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/game/sdk/domain/CouponInfo;->goodsWorth:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 514
    .restart local v0    # "goodsWorth":F
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->currentCoupon:Lcom/game/sdk/domain/CouponInfo;
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$20(Lcom/game/sdk/ui/PayActivity;)Lcom/game/sdk/domain/CouponInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/game/sdk/domain/CouponInfo;->goodsName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5143"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .restart local v2    # "temp":Ljava/lang/String;
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponUseInfoTv:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$18(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$19(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 517
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->couponCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$19(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 519
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 520
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$8(Lcom/game/sdk/ui/PayActivity;F)V

    .line 521
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v5, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v5}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/game/sdk/ui/PayActivity;->access$8(Lcom/game/sdk/ui/PayActivity;F)V

    .line 522
    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$21(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v3, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v3}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v4}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .end local v0    # "goodsWorth":F
    .end local v2    # "temp":Ljava/lang/String;
    :cond_6
    move v0, v4

    .line 512
    goto/16 :goto_4

    .line 522
    .restart local v0    # "goodsWorth":F
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_7
    const-string v3, "0"

    goto :goto_5
.end method
