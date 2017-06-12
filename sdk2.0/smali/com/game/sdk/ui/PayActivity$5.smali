.class Lcom/game/sdk/ui/PayActivity$5;
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
    iput-object p1, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 352
    if-eqz p2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_0
    sub-float v0, v3, v0

    invoke-static {v2, v0}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;F)V

    .line 354
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;F)V

    .line 355
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$23(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v1}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    const-string v0, "0"

    goto :goto_1

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v3

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v0, v0, Lcom/game/sdk/domain/UserInfo;->ttb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_3
    add-float/2addr v0, v3

    invoke-static {v2, v0}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;F)V

    .line 358
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    iget-object v2, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v2}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Lcom/game/sdk/ui/PayActivity;->access$11(Lcom/game/sdk/ui/PayActivity;F)V

    .line 359
    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->realPayAmountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$23(Lcom/game/sdk/ui/PayActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v0}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/game/sdk/ui/PayActivity$5;->this$0:Lcom/game/sdk/ui/PayActivity;

    # getter for: Lcom/game/sdk/ui/PayActivity;->amount:F
    invoke-static {v1}, Lcom/game/sdk/ui/PayActivity;->access$2(Lcom/game/sdk/ui/PayActivity;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 357
    goto :goto_3

    .line 359
    :cond_4
    const-string v0, "0"

    goto :goto_4
.end method
