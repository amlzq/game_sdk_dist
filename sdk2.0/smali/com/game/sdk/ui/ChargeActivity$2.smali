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

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 207
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 192
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 197
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 194
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/game/sdk/ui/ChargeActivity$2;->this$0:Lcom/game/sdk/ui/ChargeActivity;

    iget-object v1, v1, Lcom/game/sdk/ui/ChargeActivity;->tvs:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
