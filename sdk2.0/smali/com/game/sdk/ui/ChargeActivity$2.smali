.class Lcom/game/sdk/ui/ChargeActivity$2;
.super Ljava/lang/Object;
.source "ChargeActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/sdk/ui/ChargeActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/sdk/ui/ChargeActivity;


# direct methods
.method constructor <init>(Lcom/game/sdk/ui/ChargeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 323
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 318
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 298
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    # getter for: Lcom/game/sdk/ui/ChargeActivity;->customMoneyEv:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/game/sdk/ui/ChargeActivity;->access$15(Lcom/game/sdk/ui/ChargeActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    return-void

    .line 303
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 305
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v2, v2, Lcom/game/sdk/ui/ChargeActivity;->chargeMoneys:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 303
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ChargeActivity;->chargeLayouts:[Landroid/widget/LinearLayout;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_1
.end method
