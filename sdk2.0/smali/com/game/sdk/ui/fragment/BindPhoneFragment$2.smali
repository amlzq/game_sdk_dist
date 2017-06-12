.class Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;
.super Ljava/lang/Object;
.source "BindPhoneFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/fragment/BindPhoneFragment;->codeRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->secondes:I
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$5(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-static {v0, v2}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$6(Lcom/game/sdk/ui/fragment/BindPhoneFragment;I)V

    if-gtz v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "border_line_btn"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 278
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "border_line_color"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u65b0\u53d1\u9001("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->secondes:I
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$5(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "border_line_gray"

    invoke-static {v1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 286
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->getValidateBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$7(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v1}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/game/sdk/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;
    invoke-static {v2}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$0(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Lcom/game/sdk/ui/MainActivity;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "line_color"

    invoke-static {v2, v3, v4}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/BindPhoneFragment$2;->this$0:Lcom/game/sdk/ui/fragment/BindPhoneFragment;

    # getter for: Lcom/game/sdk/ui/fragment/BindPhoneFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/game/sdk/ui/fragment/BindPhoneFragment;->access$8(Lcom/game/sdk/ui/fragment/BindPhoneFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
